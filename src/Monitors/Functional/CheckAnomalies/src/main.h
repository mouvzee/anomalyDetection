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
#include <map>
#include <libpq-fe.h>
#include <iomanip>
#include <tuple>
#include <limits>
#include <cmath>


//SOGLIA ANOMALIE
const double THRESHOLD = 7.0;

//DATI CONNESSIONE POSTGRESQL
const std::string conninfo = "dbname=anomalydetection user=ned password=47002 hostaddr=127.0.0.1 port=5432";

//FUNZIONE PER IL MONITORAGGIO DELLE ANOMALIE
bool monitorAccuratezzaAnomalie(PGconn *conn);

//FUNZIONE ACCURATEZZA ANOMALIE COVARIANZA
bool monitorCoerenzaCovarianza(PGconn *conn);

//FUNZIONE PER IL CHECK DI NUMERO DI ANOMALIE
bool checkAnomaliesNumber(PGconn* conn, int THRESHOLD);

#endif