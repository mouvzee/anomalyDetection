cmake_minimum_required(VERSION 3.16)
project(averageanomalytime CXX)

# Imposta lo standard di C++
set(CMAKE_CXX_STANDARD 20)

# Directory di inclusione
include_directories(./ src /usr/include/postgresql)

# File sorgenti
set(SOURCE_FILES
        src/main.cpp
        src/updateDataSQL.cpp)

# Aggiungi l'eseguibile
add_executable(averageanomalytime ${SOURCE_FILES})

# Aggiungi opzioni di compilazione
target_compile_options(averageanomalytime PRIVATE -Wall -g -ggdb)

# Link alle librerie necessarie
target_link_libraries(averageanomalytime PRIVATE pq m hiredis)