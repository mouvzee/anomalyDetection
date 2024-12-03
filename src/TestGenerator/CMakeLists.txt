cmake_minimum_required(VERSION 3.16)
project(TestGenerator CXX)

# Imposta lo standard di C++
set(CMAKE_CXX_STANDARD 20)

# Directory di inclusione
include_directories(./ src /usr/include/postgresql)

# File sorgenti
set(SOURCE_FILES
        src/readFileCSV.cpp
        src/main.cpp)

# Aggiungi l'eseguibile
add_executable(TestGenerator ${SOURCE_FILES})

# Aggiungi opzioni di compilazione
target_compile_options(TestGenerator PRIVATE -Wall -g -ggdb)

# Link alle librerie necessarie
target_link_libraries(TestGenerator PRIVATE pq m hiredis)

