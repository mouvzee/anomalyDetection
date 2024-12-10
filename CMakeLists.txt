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
add_subdirectory(src/SUD/CovarianceAnomalyPresence)
add_subdirectory(src/SUD/CovarianceAnomalyValue)
add_subdirectory(ScriptsDB)


# Comandi personalizzati per eseguire gli eseguibili
add_custom_target(run_all
    COMMAND ${CMAKE_BINARY_DIR}/src/TestGenerator/TestGenerator
    COMMAND ${CMAKE_BINARY_DIR}/src/SUD/AverageAndCovariance/averageandcovariance
    COMMAND ${CMAKE_BINARY_DIR}/src/SUD/AverageAnomalyPresence/averageanomalypresence
    COMMAND ${CMAKE_BINARY_DIR}/src/SUD/AverageAnomalyValue/averageanomalyvalue
    COMMAND ${CMAKE_BINARY_DIR}/src/SUD/CovarianceAnomalyPresence/covarianceanomalypresence
    COMMAND ${CMAKE_BINARY_DIR}/src/SUD/CovarianceAnomalyValue/covarianceanomalyvalue
    DEPENDS
        TestGenerator
        averageandcovariance
        averageanomalypresence
        averageanomalyvalue
        covarianceanomalypresence
        covarianceanomalyvalue
    COMMENT "Esecuzione di tutti gli eseguibili"
)




