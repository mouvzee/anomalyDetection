#include "main.h"

int main() {
    
    // Connessione al database
    PGconn *conn = PQconnectdb("dbname=detection user=mouvzee password=13070 hostaddr=127.0.0.1 port=5432");
    if (PQstatus(conn) != CONNECTION_OK) {
        std::cerr << "Errore nella connessione a PostgreSQL: " << PQerrorMessage(conn) << std::endl;
        PQfinish(conn);
        return 1;
    }


    // Aggiornamento del della tabella delle anomalie delle covarianze
    if(!updateDataSQL(conn)){
        PQfinish(conn);
        return 1;
    }

    std::cout << "Calcolo presenza anomalia sulla covarianza completato." << std::endl;

    PQfinish(conn);
    return 0;
}