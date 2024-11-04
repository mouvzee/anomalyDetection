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
    
    // Lettura chiavi da Redis
    redisReply *reply_sensors = (redisReply *)redisCommand(context, "KEYS *");
    std::cout << "ciao" << std::endl;
    if (reply_sensors == NULL || reply_sensors->type == REDIS_REPLY_ERROR) {
        std::cerr << "Errore nel recupero dell'elenco dei sensori da Redis." << std::endl;
        freeReplyObject(reply_sensors);
        redisFree(context);
        return 1;
    }
    std::cout << "ciaoòòòòòò" << std::endl;
    // Creazione struttura dati ordinata di sensori
    std::vector<std::string> sensors;
    for (size_t i = 0; i < reply_sensors->elements; i ++) {
        sensors.push_back(reply_sensors->element[i]->str);
    }

    std::sort(sensors.begin(), sensors.end(), sensorSorting);
    freeReplyObject(reply_sensors);
    std::cout << "ciao-1" << std::endl;

    // Lettura dati da Redis e creazione vettore di dati
    std::map<std::string, std::vector<Data>> dataVector;
    if(!readDataRedis(context, sensors, dataVector)){
        return 1;
    }
    std::cout << "ciao0" << std::endl;
    // Connessione al database PostgreSQL
    PGconn *conn = PQconnectdb("dbname=pippi user=mouvzee password=13070 hostaddr=127.0.0.1 port=5432");
    if (PQstatus(conn) != CONNECTION_OK) {
        std::cerr << "Errore nella connessione a PostgreSQL: " << PQerrorMessage(conn) << std::endl;
        PQfinish(conn);
        return 1;
    }
    
    // Salvataggio dati in PostgreSQL
    if (!saveDataInPostgreSQL(dataVector, conn)){
        PQfinish(conn);
        return 1;
    }

    // Scorrimento dei dati letti
    for(size_t i = 0; i<dataVector[sensors[0]].size() - WINDOW_SIZE+1 ; i++){

        std::map<std::string, std::vector<Data>> dataWindow = createDataWindow(dataVector, i, WINDOW_SIZE + i-1);
        std::cout << "ciao1" << std::endl;
        std::map<std::string, double> averages = averageValue(dataWindow);
        std::cout << "ciao2" << std::endl;
        std::vector<std::vector<double>> covariances = covarianceValue(sensors, dataWindow, averages);
        std::cout << "ciao3" << std::endl;

        if(!saveAverageInPostgreSQL(averages, i, conn)){
            PQfinish(conn);
            return 1;
        }

        std::cout << "ciao4" << std::endl;
        
        if(!saveCovarianceInPostgreSQL(covariances, i, conn)){
            PQfinish(conn);
            return 1;
        }

        std::cout << "ciao5" << std::endl;


    }

    PQfinish(conn);
    redisFree(context);
    return 0;
}