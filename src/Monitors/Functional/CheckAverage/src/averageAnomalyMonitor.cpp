#include "main.h" // Per conninfo e altri parametri di configurazione

bool monitorAverageAnomalies(PGconn *conn) {
    // Query per selezionare i dati di soglia e rilevamento delle anomalie
    std::string query = "SELECT sensorID, firstSampleTime, isAnomaly, value, upperThreshold, lowerThreshold "
                        "FROM anomalyAverageTable;";
    
    PGresult *res = PQexec(conn, query.c_str());
    if (PQresultStatus(res) != PGRES_TUPLES_OK) {
        std::cerr << "Errore nella query di selezione dei dati: " << PQerrorMessage(conn) << std::endl;
        PQclear(res);
        return false;
    }

    // Ciclo su ciascuna riga dei risultati della query
    int rows = PQntuples(res);
    for (int i = 0; i < rows; i++) {
        std::string sensorID = PQgetvalue(res, i, 0);
        int firstSampleTime = std::stoi(PQgetvalue(res, i, 1));
        bool isAnomaly = std::string(PQgetvalue(res, i, 2)) == "t";
        double value = PQgetisnull(res, i, 3) ? std::nan("") : std::stod(PQgetvalue(res, i, 3));
        double upperThreshold = PQgetisnull(res, i, 4) ? std::nan("") : std::stod(PQgetvalue(res, i, 4));
        double lowerThreshold = PQgetisnull(res, i, 5) ? std::nan("") : std::stod(PQgetvalue(res, i, 5));
        
        // Verifica se il rilevamento di anomalia è accurato
        std::string check;
        if (std::isnan(value) && !isAnomaly) {
            check = "TRUE"; // Nessun valore e nessuna anomalia
        } else if (std::isnan(value) && isAnomaly) {
            check = "FALSE"; // Nessun valore ma segnalato come anomalia
        } else if ((lowerThreshold <= value && value <= upperThreshold && !isAnomaly) || 
                   (!(lowerThreshold <= value && value <= upperThreshold) && isAnomaly)) {
            check = "TRUE"; // Rilevamento corretto
        } else {
            check = "FALSE"; // Rilevamento errato
        }

        // Inserisci il risultato nel database nella tabella di monitoraggio
        std::string insertQuery = "INSERT INTO MonitorAnomalyAverageTable (sensorID, firstSampleTime, isRight) VALUES ('" 
                                  + sensorID + "', " + std::to_string(firstSampleTime) + ", " + check + ");";
        PGresult *resInsert = PQexec(conn, insertQuery.c_str());
        if (PQresultStatus(resInsert) != PGRES_COMMAND_OK) {
            std::cerr << "Errore durante l'inserimento dei dati di monitoraggio: " << PQerrorMessage(conn) << std::endl;
            PQclear(resInsert);
            PQclear(res);
            return false;
        }
        PQclear(resInsert);
    }

    PQclear(res);
    return true;
}
