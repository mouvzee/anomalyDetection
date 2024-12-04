#include "main.h"

bool readIDS(redisContext *context, std::vector<std::string> &sensorsVector) {
    redisReply *reply_sensors = (redisReply *)redisCommand(context, "SMEMBERS sensors");

    if (reply_sensors == NULL || reply_sensors->type == REDIS_REPLY_ERROR) {
        std::cerr << "Errore nel recupero dell'elenco dei sensori da Redis."<< reply_sensors->str << std::endl;
        freeReplyObject(reply_sensors);
        redisFree(context);
        return 1;
    }

    for (size_t i = 0; i < reply_sensors->elements; i++) {
        sensorsVector.push_back(reply_sensors->element[i]->str);
    }

    freeReplyObject(reply_sensors);
    return true;
}