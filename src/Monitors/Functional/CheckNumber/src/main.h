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



//THRESHOLD
const double THRESHOLD = 7.0;

//FUNZIONE PER IL CHECK DI NUMERO DI ANOMALIE
bool checkAnomaliesNumber(PGconn* conn, int THRESHOLD);

#endif