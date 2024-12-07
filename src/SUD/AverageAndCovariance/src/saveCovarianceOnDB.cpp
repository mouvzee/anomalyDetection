#include "main.h"

bool saveCovarianceOnDB(const std::vector<std::vector<double>>& covariances, size_t firstSampleTime, PGconn *conn) {
    const size_t BATCH_SIZE = 1000; // Numero di righe da inserire per batch
    std::string queryBase = "INSERT INTO covarianceTable (sensorID1, sensorID2, value, firstSampleTime, lastSampleTime) VALUES ";
    std::string query = queryBase;

    for (size_t i = 0; i < covariances.size(); ++i) {
        for (size_t j = 0; j < covariances[i].size(); ++j) {
            // Valore da inserire
            std::string value = std::isnan(covariances[i][j]) ? "NULL" : std::to_string(covariances[i][j]);
            query += "(" + std::to_string(i) + ", " + std::to_string(j) + ", " + value + ", "
                     + std::to_string(firstSampleTime) + ", " + std::to_string(firstSampleTime + WINDOW_SIZE - 1) + "),";

            // Esegui il batch quando raggiungi la dimensione massima
            if ((i * covariances.size() + j + 1) % BATCH_SIZE == 0) {
                query.back() = ' '; // Rimuove l'ultima virgola
                query += "ON CONFLICT (sensorID1, sensorID2, firstSampleTime) DO NOTHING;";
                
                // Debug della query
                //std::cout << "Executing batch query: " << query << std::endl;

                PGresult *res = PQexec(conn, query.c_str());
                if (PQresultStatus(res) != PGRES_COMMAND_OK) {
                    std::cerr << "Errore durante l'esecuzione della query batch: " << PQresultErrorMessage(res) << std::endl;
                    PQclear(res);
                    return false;
                }
                PQclear(res);
                query = queryBase; // Reset query per il prossimo batch
            }
        }
    }

    // Esegui gli inserimenti rimanenti
    if (query != queryBase) { // Se ci sono ancora dati nella query
        query.back() = ' '; // Rimuove l'ultima virgola
        query += "ON CONFLICT (sensorID1, sensorID2, firstSampleTime) DO NOTHING;";
        
        // Debug della query
        //std::cout << "Executing final batch query: " << query << std::endl;

        PGresult *res = PQexec(conn, query.c_str());
        if (PQresultStatus(res) != PGRES_COMMAND_OK) {
            std::cerr << "Errore durante l'esecuzione della query finale: " << PQresultErrorMessage(res) << std::endl;
            PQclear(res);
            return false;
        }
        PQclear(res);
    }

    return true;
}