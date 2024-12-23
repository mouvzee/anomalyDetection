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

// Tempo massimo di deltaTime in millisecondi
#define MAXTIME 1000

// Funzione per calcolare il deltaTime e aggiornare la tabella
bool updateDeltaTime(PGconn *conn);

// Aggiorna il database SQL
bool updateDataSQL(PGconn *conn);

#endif // MAIN_H