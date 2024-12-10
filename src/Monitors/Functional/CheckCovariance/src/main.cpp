#include "main.h"

int main() {

    // Connesione al database
    PGconn *conn = PQconnectdb("dbname=detection user=mouvzee password=13070 hostaddr=127.0.0.1 port=5432");
    if (PQstatus(conn) != CONNECTION_OK) {
        std::cerr << "Errore nella connessione a PostgreSQL: " << PQerrorMessage(conn) << std::endl;
        PQfinish(conn);
        return 1;
    }

    if(!monitorCoerenzaCovarianza(conn)){
        PQfinish(conn);
        return 1;
    }

    std::cout << "Monitor Coerenza Covarianza completato con successo" << std::endl;
    PQfinish(conn);
}