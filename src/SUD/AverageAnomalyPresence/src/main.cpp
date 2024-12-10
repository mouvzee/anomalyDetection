#include "main.h"

int main() {
    
    // Connessione al database
    PGconn *conn = PQconnectdb("dbname=detection user=mouvzee password=13070 hostaddr=127.0.0.1 port=5432");
    if (PQstatus(conn) != CONNECTION_OK) {
        std::cerr << "Errore nella connessione a PostgreSQL: " << PQerrorMessage(conn) << std::endl;
        PQfinish(conn);
        return 1;
    }

    // Lettura dei dati dal database e creazione e popolazione delle strutture dati per esse
    std::map<std::int32_t, std::vector<Data>> dataVector;
    std::map<std::int32_t, std::vector<Average>> averages;
    if(!readDataSQL(dataVector, averages, conn)){
        PQfinish(conn);
        return 1;
    }
    
    // Calcolo presenza delle anomalie
    detectAnomaly(dataVector, averages);
    
    // Salva i dati sul database SQL
    if(!saveAnomalySQL(averages, dataVector, conn)){
        PQfinish(conn);
        return 1;
    }

    std::cout << "Operazione completata con successo" << std::endl;
    
    PQfinish(conn);
    return 0;
}