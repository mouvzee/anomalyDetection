#include "main.h"

bool saveDataOnDB(std::vector<Data> &dataVector, PGconn *conn) {

    // Scorrimento dei dati dei sensori
    for (const Data& data : dataVector) {

            //std::cout << "autoelement: " << element.sensorID << std::endl;

            // Creazione query e inserimento dati nel Database
            std::ostringstream queryStream;
            queryStream << "INSERT INTO dataTable (sensorID, sampleTime, value) VALUES ('" << data.sensorID << "', " << data.sampleTime << ", " << (data.value == "NULL" ? "NULL" : "'" + data.value + "'") << ") ON CONFLICT (sensorID, sampleTime) DO NOTHING;";
            std::string query = queryStream.str();

            PGresult *res = PQexec(conn, query.c_str());
            if (PQresultStatus(res) != PGRES_COMMAND_OK) {
                std::cerr << "Errore durante l'esecuzione della query: " << PQresultErrorMessage(res) << std::endl;
                PQclear(res);
                return false;
            }

            PQclear(res);
        }
    std::cout << "Inserimento dati completato." << std::endl;
    return true;
}