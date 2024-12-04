#include "main.h"

bool saveAverageOnDB(std::vector<double> averages, size_t firstSampleTime, PGconn *conn){
    
    // Scorrimento delle medie
    for (size_t i = 0; i < averages.size(); i++) {
        

        //Controllo se la media è un NaN
        std::string value;
        if (std::isnan(averages[i])) {
            value = "NULL";
        } else {
            value = std::to_string(averages[i]);
        }


        // Creazione query e inserimento media nel Database
        std::string query = "INSERT INTO averageTable (sensorID, value, firstSampleTime, lastSampleTime) VALUES ('"
                + std::to_string(i) + "', " + value + ", " + std::to_string(firstSampleTime) 
                + ", " + std::to_string(firstSampleTime + WINDOW_SIZE-1) + ") ON CONFLICT (sensorID, firstSampleTime) DO NOTHING;";
        PGresult *res = PQexec(conn, query.c_str());
        if (PQresultStatus(res) != PGRES_COMMAND_OK) {
            std::cerr << "Errore durante l'esecuzione della query: " << PQresultErrorMessage(res) << std::endl;
            PQclear(res);
            return false;
        }
        
        PQclear(res);
    }
    return true;
}