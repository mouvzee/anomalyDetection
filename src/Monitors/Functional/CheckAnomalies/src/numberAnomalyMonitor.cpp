#include "main.h"

bool checkAnomaliesNumber(PGconn* conn, int sogliaAnomalie) {
    // Query per contare le anomalie nella tabella anomalyAverageTable
    PGresult* res = PQexec(conn, "SELECT COUNT(*) FROM anomalyAverageTable WHERE isAnomaly = TRUE");
    if (PQresultStatus(res) != PGRES_TUPLES_OK) {
        std::cerr << "Errore nel conteggio delle anomalie: " << PQerrorMessage(conn) << std::endl;
        PQclear(res);
        return false;
    }

    // Conversione del risultato in intero
    int anomalieRilevate = std::stoi(PQgetvalue(res, 0, 0));
    PQclear(res);

    // Controllo se il numero di anomalie supera la soglia
    if (anomalieRilevate > sogliaAnomalie) {
        // Preparazione dei dati per il log
        std::string monitorType = "AnomalyMonitor";
        std::string message = "Allarme: soglia di anomalie superata. Anomalie rilevate: " + std::to_string(anomalieRilevate);

        // Inserimento del log nella tabella monitorLogTable
        const char* paramValues[2] = { monitorType.c_str(), message.c_str() };
        PGresult* logRes = PQexecParams(conn,
            "INSERT INTO monitorLogTable (monitorType, message) VALUES ($1, $2)",
            2,       // numero di parametri
            nullptr, // tipi dei parametri (null per usare il default)
            paramValues, // valori dei parametri
            nullptr, // lunghezze dei parametri (null per stringhe)
            nullptr, // indicatori di formato (null per testo)
            0);      // risultato in testo

        if (PQresultStatus(logRes) != PGRES_COMMAND_OK) {
            std::cerr << "Errore nell'inserimento del log: " << PQerrorMessage(conn) << std::endl;
            PQclear(logRes);
            return false;
        }
        PQclear(logRes);
    }
    return true;
}