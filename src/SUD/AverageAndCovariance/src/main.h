#ifndef MAIN_H
#define MAIN_H

#include <iostream>
#include <sstream>
#include <vector>
#include <unordered_map>
#include <string>
#include <algorithm>
#include <cmath>
#include <set>
#include <string>
#include <hiredis/hiredis.h>
#include <map>
#include <libpq-fe.h>
#include <iomanip>
#include <tuple>
#include <limits>
#include <cmath>

// Grandezza della finestra temporale
#define WINDOW_SIZE 16


// Struttura per i dati letti da Redis
struct Data {
    std::string sampleTime;
    std::string sensorID;
    std::string value;
};


// Legge le stream di dati da Redis e salva il contenuto in un vettore di dati
bool readDataRedis(redisContext *context, std::vector<Data> &dataVector);

//Salva i dati nel database PostgreSQL
bool saveDataOnDB(std::vector<Data> &dataVector, PGconn *conn);

//Crea una finestra temporale di dati
std::vector<Data> createDataWindow(std::vector<Data> &dataVector, int wStart, int wEnd);

//Calcola la media dei valori di una finestra temporale
std::vector<double> averageValue(const std::map<std::int32_t, std::vector<double>>& sensors);

//Crea una mappa con i valori dei sensori
std::map<std::int32_t, std::vector<double>> createMap(std::vector<Data> dataWindow);

//Calcola la covarianza dei valori dei sensori
std::vector<std::vector<double>> covarianceValue(const std::vector<double>& averages, std::map<std::int32_t, std::vector<double>> &sensors);
//Salva la media nel database PostgreSQL
bool saveAverageOnDB(std::vector<double> averages, size_t firstSampleTime, PGconn *conn);

//Salva la covarianza nel database PostgreSQL
bool saveCovarianceOnDB(const std::vector<std::vector<double>>& covariances, size_t firstSampleTime, PGconn *conn);

#endif