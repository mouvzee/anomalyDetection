#include "main.h" // Per conninfo e altri parametri di configurazione

bool monitorCoerenzaCovarianza(PGconn *conn) {
    // Query per selezionare i dati di covarianza e le soglie di riferimento
    std::string query = "SELECT sensorID1, sensorID2, firstSampleTime, value "
                        "FROM covarianceTable;";
    
    PGresult *resCov = PQexec(conn, query.c_str());
    if (PQresultStatus(resCov) != PGRES_TUPLES_OK) {
        std::cerr << "Errore nella query di selezione dei dati di covarianza: " << PQerrorMessage(conn) << std::endl;
        PQclear(resCov);
        return false;
    }

    // Scorri ciascuna riga dei risultati della query
    int rows = PQntuples(resCov);
    for (int i = 0; i < rows; i++) {
        std::string sensorID1 = PQgetvalue(resCov, i, 0);
        std::string sensorID2 = PQgetvalue(resCov, i, 1);
        int firstSampleTime = std::stoi(PQgetvalue(resCov, i, 2));
        double covarianceValue = PQgetisnull(resCov, i, 3) ? std::nan("") : std::stod(PQgetvalue(resCov, i, 3));

        // Query per ottenere la soglia e l'eventuale stato di anomalia per la coppia di sensori
        std::string anomalyQuery = "SELECT isAnomaly, threshold FROM anomalyCovarianceTable "
                                   "WHERE sensorID1 = '" + sensorID1 + "' AND sensorID2 = '" + sensorID2 + 
                                   "' AND firstSampleTime = " + std::to_string(firstSampleTime) + ";";
        
        PGresult *resAnomaly = PQexec(conn, anomalyQuery.c_str());
        if (PQresultStatus(resAnomaly) != PGRES_TUPLES_OK) {
            std::cerr << "Errore nella query di selezione delle anomalie di covarianza: " << PQerrorMessage(conn) << std::endl;
            PQclear(resAnomaly);
            PQclear(resCov);
            return false;
        }
        if (PQntuples(resAnomaly) == 0) {
            PQclear(resAnomaly);
            continue; // Nessun dato di anomalia trovato, continua con il prossimo
        }

        bool isAnomaly = std::string(PQgetvalue(resAnomaly, 0, 0)) == "t";
        double threshold = PQgetisnull(resAnomaly, 0, 1) ? std::nan("") : std::stod(PQgetvalue(resAnomaly, 0, 1));

        // Verifica la coerenza della covarianza rispetto alla soglia
        std::string check;
        if (std::isnan(covarianceValue) || std::isnan(threshold)) {
            check = "FALSE"; // Se manca un valore, non può essere coerente
        } else if ((std::abs(covarianceValue) <= threshold && !isAnomaly) || 
                   (std::abs(covarianceValue) > threshold && isAnomaly)) {
            check = "TRUE"; // Rilevamento corretto di coerenza
        } else {
            check = "FALSE"; // Rilevamento errato di coerenza
        }

        // Inserisci il risultato di monitoraggio nella tabella MonitorAnomalyCovarianceTable
        std::string insertQuery = "INSERT INTO MonitorAnomalyCovarianceTable (sensorID1, sensorID2, firstSampleTime, isRight) "
                                  "VALUES ('" + sensorID1 + "', '" + sensorID2 + "', " + std::to_string(firstSampleTime) + ", " + check + ");";
        
        PGresult *resInsert = PQexec(conn, insertQuery.c_str());
        if (PQresultStatus(resInsert) != PGRES_COMMAND_OK) {
            std::cerr << "Errore durante l'inserimento dei dati di monitoraggio della coerenza: " << PQerrorMessage(conn) << std::endl;
            PQclear(resInsert);
            PQclear(resAnomaly);
            PQclear(resCov);
            return false;
        }
        PQclear(resInsert);
        PQclear(resAnomaly);
    }

    PQclear(resCov);
    return true;
}
