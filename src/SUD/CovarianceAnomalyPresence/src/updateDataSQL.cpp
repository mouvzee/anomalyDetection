#include "main.h"

bool updateDataSQL(PGconn *conn) {
    // Inizio della transazione
    PGresult *beginRes = PQexec(conn, "BEGIN;");
    if (PQresultStatus(beginRes) != PGRES_COMMAND_OK) {
        std::cerr << "Errore durante l'inizio della transazione: " << PQresultErrorMessage(beginRes) << std::endl;
        PQclear(beginRes);
        return false;
    }
    PQclear(beginRes);

    // Query per la selezione dei dati dalla tabella delle anomalie delle covarianze
    std::string query = "SELECT * FROM covarianceTable;";
    PGresult *resSelect = PQexec(conn, query.c_str());
    if (PQresultStatus(resSelect) != PGRES_TUPLES_OK || PQntuples(resSelect) == 0) {
        std::cerr << "Errore durante l'esecuzione della query di selezione anomalie di covarianza: " << PQresultErrorMessage(resSelect) << std::endl;
        PQclear(resSelect);

        // Rollback in caso di errore
        PGresult *rollbackRes = PQexec(conn, "ROLLBACK;");
        PQclear(rollbackRes);
        return false;
    }

    // Scorrimento dei valori della tabella delle anomalie delle covarianze
    int nRows = PQntuples(resSelect);
    for (int i = 0; i < nRows; i++) {
        std::string sensorID1 = PQgetvalue(resSelect, i, 0);
        std::string sensorID2 = PQgetvalue(resSelect, i, 1);
        std::string sampleTime = PQgetvalue(resSelect, i, 3);
        std::string value = PQgetvalue(resSelect, i, 2);

        std::cout << "value: " << value << std::endl;

        // Controllo presenza dell'anomalia
        std::string isAnomaly;
        if (value == "") {
            isAnomaly = "FALSE";
            value = "NULL";
        } else {
            isAnomaly = detectAnomaly(std::stod(value)) ? "FALSE" : "TRUE";
        }

        // Query per l'aggiornamento della tabella delle anomalie delle covarianze
        query = "INSERT INTO anomalyCovarianceTable (sensorID1, sensorID2, firstSampleTime, isAnomaly, value, detectionTime, threshold) VALUES ('"
                + sensorID1 + "', " + sensorID2 + ", " + sampleTime + ", " + isAnomaly + ", " + value + ", NOW(), " + std::to_string(theta) + ");";
        PGresult *resUpdate = PQexec(conn, query.c_str());
        if (PQresultStatus(resUpdate) != PGRES_COMMAND_OK) {
            std::cerr << "Errore durante l'esecuzione della query di aggiornamento anomalie di covarianza: " << PQresultErrorMessage(resUpdate) << std::endl;
            PQclear(resUpdate);
            PQclear(resSelect);

            // Rollback in caso di errore
            PGresult *rollbackRes = PQexec(conn, "ROLLBACK;");
            PQclear(rollbackRes);
            return false;
        }

        PQclear(resUpdate);
    }

    PQclear(resSelect);

    // Commit della transazione
    PGresult *commitRes = PQexec(conn, "COMMIT;");
    if (PQresultStatus(commitRes) != PGRES_COMMAND_OK) {
        std::cerr << "Errore durante il commit della transazione: " << PQresultErrorMessage(commitRes) << std::endl;
        PQclear(commitRes);

        // Rollback in caso di errore durante il commit
        PGresult *rollbackRes = PQexec(conn, "ROLLBACK;");
        PQclear(rollbackRes);
        return false;
    }
    PQclear(commitRes);

    return true;
}
