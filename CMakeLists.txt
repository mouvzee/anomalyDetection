cmake_minimum_required(VERSION 3.16)
project(AnomalyDetection CXX)

# Imposta lo standard di C++
set(CMAKE_CXX_STANDARD 20)

# Directory di inclusione
include_directories(./ src /usr/include/postgresql)

# Aggiungi le sottodirectory
add_subdirectory(src/TestGenerator)
add_subdirectory(src/SUD/AverageAndCovariance)
add_subdirectory(src/SUD/AverageAnomalyPresence)
add_subdirectory(src/SUD/AverageAnomalyValue)

# Comandi personalizzati per eseguire gli eseguibili
add_custom_target(run_all
    COMMAND ${CMAKE_BINARY_DIR}/src/TestGenerator/TestGenerator
    COMMAND ${CMAKE_BINARY_DIR}/src/SUD/AverageAndCovariance/averageandcovariance
    COMMAND ${CMAKE_BINARY_DIR}/src/SUD/AverageAnomalyPresence/averageanomalypresence
    COMMAND ${CMAKE_BINARY_DIR}/src/SUD/AverageAnomalyValue/averageanomalyvalue
    DEPENDS
        TestGenerator
        averageandcovariance
        averageanomalypresence
        averageanomalyvalue
    COMMENT "Esecuzione di tutti gli eseguibili"
)

