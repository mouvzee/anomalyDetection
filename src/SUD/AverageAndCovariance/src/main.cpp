#include "main.h"

int main() {
    
    // Connessione a Redis
    redisContext *context = redisConnect("127.0.0.1", 6379);
    if (context == NULL || context->err) {
        if (context) {
            std::cerr << "Errore nella connessione a Redis: " << context->errstr << std::endl;
            redisFree(context);
        } else {
            std::cerr << "Impossibile allocare il contesto di connessione da Redis." <<std::endl;
        }
        return 1;
    }

    // debug
    std::cout << "ciao" << std::endl;


    // Lettura dati da Redis e creazione vettore di dati
    std::vector<Data> dataVector;
    if(!readDataRedis(context, dataVector)) {
        redisFree(context);
        return 1;
    }

    //connessione a prostgres
    PGconn *conn = PQconnectdb("dbname=pippi user=mouvzee password=13070 hostaddr=127.0.0.1 port=5432");
    if (PQstatus(conn) != CONNECTION_OK) {
        std::cerr << "Errore nella connessione a PostgreSQL: " << PQerrorMessage(conn) << std::endl;
        PQfinish(conn);
        return 1;
    }

    std::cout << "connessione db ok." << std::endl;

    // Salvataggio dati in PostgreSQL
    if (!saveDataOnDB(dataVector, conn)){
        PQfinish(conn);
        return 1;
    }

    //debug
    std::cout << "ciao3" << std::endl;
    std::cout << "dataVector.size(): " << dataVector.size() << std::endl;

    //Massimo sampleTime
    size_t MaxST = std::stoi(dataVector.back().sampleTime);

 
    //creazione della finestra temporale
    for(size_t i = 0; i <= MaxST - WINDOW_SIZE + 1 ; i++) {

        //Creazoine della finestra temporale
        std::vector<Data> dataWindow = createDataWindow(dataVector, i, WINDOW_SIZE + i-1);

        //Creazione della mappa di sensori sulla quale andremo a lavorare
        std::map<std::int32_t, std::vector<double>> sensors = createMap(dataWindow);

        //Calcolo delle medie
        std::vector<double> averages = averageValue(sensors);

        //Salvataggio delle medie
        if(!saveAverageOnDB(averages, i, conn)){
            PQfinish(conn);
            return 1;
        }

        std::cout << "Salvataggio medie ok." << std::endl;

        //Calcolo delle covarianze
        std::vector<std::vector<double>> covariances = covarianceValue(averages, sensors);
        
        //Salvataggio delle covarianze
        if(!saveCovarianceOnDB(covariances, i, conn)){
            PQfinish(conn);
            return 1;
        }

        std::cout << "Salvataggio covarianze ok." << std::endl;
    }

    //debug
    std::cout << "ciao4" << std::endl;

    
}