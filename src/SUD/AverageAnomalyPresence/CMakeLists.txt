cmake_minimum_required(VERSION 3.16)
project(averageanomalypresence CXX)

# Imposta lo standard di C++
set(CMAKE_CXX_STANDARD 20)

# Directory di inclusione
include_directories(./ src /usr/include/postgresql)

# File sorgenti
set(SOURCE_FILES
        src/main.cpp
        src/detectAnomaly.cpp
        src/readDataSQL.cpp
        src/saveAnomalySQL.cpp)

# Aggiungi l'eseguibile
add_executable(averageanomalypresence ${SOURCE_FILES})

# Aggiungi opzioni di compilazione
target_compile_options(averageanomalypresence PRIVATE -Wall -g -ggdb)

# Link alle librerie necessarie
target_link_libraries(averageanomalypresence PRIVATE pq m hiredis)