#include "main.h"

int main() {
    
    // Connessione al database
    PGconn *conn = PQconnectdb("dbname=detection user=mouvzee password=13070 hostaddr=127.0.0.1 port=5432");
    if (PQstatus(conn) != CONNECTION_OK) {
        std::cerr << "Errore nella connessione a PostgreSQL: " << PQerrorMessage(conn) << std::endl;
        PQfinish(conn);
        return 1;
    }

    // Aggiornamento dei dati in PostgreSQL
    if(!updateDataSQL(conn)){
        PQfinish(conn);
        return 1;
    }

    std::cout << "Monitor per il calcolo del deltaTime sulla covarianza completato con successo." << std::endl;

    PQfinish(conn);
    return 0;
}