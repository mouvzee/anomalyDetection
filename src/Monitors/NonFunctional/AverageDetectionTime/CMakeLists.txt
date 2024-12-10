cmake_minimum_required(VERSION 3.16)
project(averagedetectiontime CXX)

# Imposta lo standard di C++
set(CMAKE_CXX_STANDARD 20)

# Directory di inclusione
include_directories(./ src /usr/include/postgresql)

# File sorgenti
set(SOURCE_FILES
        src/main.cpp
        src/updateDataSQL.cpp)

# Aggiungi l'eseguibile
add_executable(averagedetectiontime ${SOURCE_FILES})

# Aggiungi opzioni di compilazione
target_compile_options(averagedetectiontime PRIVATE -Wall -g -ggdb)

# Link alle librerie necessarie
target_link_libraries(averagedetectiontime PRIVATE pq m hiredis)