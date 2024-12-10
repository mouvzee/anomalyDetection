cmake_minimum_required(VERSION 3.16)
project(checkaverage CXX)

# Imposta lo standard di C++
set(CMAKE_CXX_STANDARD 20)

# Directory di inclusione
include_directories(./ src /usr/include/postgresql)

# File sorgenti
set(SOURCE_FILES
        src/main.cpp
        src/averageAnomalyMonitor.cpp)

# Aggiungi l'eseguibile
add_executable(checkaverage ${SOURCE_FILES})

# Aggiungi opzioni di compilazione
target_compile_options(checkaverage PRIVATE -Wall -g -ggdb)

# Link alle librerie necessarie
target_link_libraries(checkaverage PRIVATE pq m hiredis)