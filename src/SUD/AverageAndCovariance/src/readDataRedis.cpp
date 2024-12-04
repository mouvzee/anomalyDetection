#include "main.h"

bool readDataRedis(redisContext *context, std::vector<Data> &dataVector) {

    // Lettura chiavi da Redis
    std::string command = "XREAD STREAMS mystream 0"; // Legge tutte le stream a partire dalla 0
    redisReply *reply_sensors = (redisReply *)redisCommand(context, command.c_str()); 

    // Controllo errore e se presente libero memoria e chiudo connessione
    if (reply_sensors == NULL || reply_sensors->type == REDIS_REPLY_ERROR) {
        std::cerr << "Errore nel recupero dell'elenco dei sensori da Redis."<< reply_sensors->str << std::endl;
        freeReplyObject(reply_sensors);
        redisFree(context);
        return 1;
    }
    std::cout << "Connessione e recupero dati redis ok" << std::endl;

    //estraggo i dati dalla risposta
    for (size_t i = 0; i < reply_sensors->element[0]->element[1]->elements; i++) {
        redisReply *entry = reply_sensors->element[0]->element[1]->element[i];
        Data data;

        //estraggo i campi dalla risposta
        for (size_t j = 0; j < entry->element[1]->elements; j += 2) {
            std::string field = entry->element[1]->element[j]->str;
            std::string value = entry->element[1]->element[j + 1]->str;

            if (field == "sensorID") {
                data.sensorID = value;
            } else if (field == "sampleTime") {
                data.sampleTime = value;
            } else if (field == "value") {
                data.value = value;
            }
        }

        dataVector.push_back(data);
    }

    freeReplyObject(reply_sensors);
    return true;
}
