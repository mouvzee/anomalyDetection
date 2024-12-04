cmake_minimum_required(VERSION 3.16)
project(averageandcovariance CXX)

# Imposta lo standard di C++
set(CMAKE_CXX_STANDARD 20)

# Directory di inclusione
include_directories(./ src /usr/include/postgresql)

# File sorgenti
set(SOURCE_FILES
        src/main.cpp
        src/readDataRedis.cpp
        src/saveDataOnDB.cpp
        src/createDataWindow.cpp
        src/averageValue.cpp
        src/createMap.cpp
        src/covarianceValue.cpp
        src/saveAverageOnDB.cpp
        src/saveCovarianceOnDB.cpp)

# Aggiungi l'eseguibile
add_executable(averageandcovariance ${SOURCE_FILES})

# Aggiungi opzioni di compilazione
target_compile_options(averageandcovariance PRIVATE -Wall -g -ggdb)

# Link alle librerie necessarie
target_link_libraries(averageandcovariance PRIVATE pq m hiredis)

