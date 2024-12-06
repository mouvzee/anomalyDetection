#include "main.h"

int main() {
    
    // Connessione al database
    PGconn *conn = PQconnectdb("dbname=pippi user=mouvzee password=13070 hostaddr=127.0.0.1 port=5432");
    if (PQstatus(conn) != CONNECTION_OK) {
        std::cerr << "Errore nella connessione a PostgreSQL: " << PQerrorMessage(conn) << std::endl;
        PQfinish(conn);
        return 1;
    }

    // Lettura dei dati dal database e creazione e popolazione della struttura dei dati e le medie
    std::map<std::int32_t, std::vector<Data>> dataVector;
    std::map<std::int32_t, std::vector<Average>> averages;
    if(!readDataSQL(dataVector, averages, conn)){
        PQfinish(conn);
        return 1;
    }

    std::cout << "LETTURA DATI OK." << std::endl;
    
    // Calcolo del valore dell'anomalia
    calculateAnomaly(dataVector, averages);

    std::cout << "CALCOLO ANOMALIA OK." << std::endl;

    // Salvataggio dati sul database
    std::int32_t key = averages.begin()->first;
    int windowSize = averages[key][0].lastSampleTime + 1; 
    if(!saveAnomalySQL(dataVector, windowSize, conn)){
        PQfinish(conn);
        return 1;
    }

    std::cout << "SALVATAGGIO DATI OK." << std::endl;

    PQfinish(conn);
    return 0;
}