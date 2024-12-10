# File principale CMakeLists.txt
cmake_minimum_required(VERSION 3.16)
project(MonitorsSelector)

# Opzione per selezionare quale monitor eseguire
set(DEFAULT_MONITOR "averageanomalytime" CACHE STRING "Seleziona il monitor da eseguire: averageanomalytime, averagedetectiontime, covarianceanomalytime, covariancedetectiontime")

# Elenca i monitor disponibili
set(MONITOR_EXECUTABLES
    "averageanomalytime"
    "averagedetectiontime"
    "covarianceanomalytime"
    "covariancedetectiontime"
)

# Controlla se il monitor selezionato è valido
list(FIND MONITOR_EXECUTABLES ${DEFAULT_MONITOR} MONITOR_INDEX)
if(MONITOR_INDEX EQUAL -1)
    message(FATAL_ERROR "Monitor selezionato non valido: ${DEFAULT_MONITOR}. Scegli tra: ${MONITOR_EXECUTABLES}")
endif()

# Mappa tra eseguibili e directory
set(MONITOR_TO_DIRECTORY_MAP
    "averageanomalytime" "AverageAnomalyTime"
    "averagedetectiontime" "AverageDetectionTime"
    "covarianceanomalytime" "CovarianceAnomalyTime"
    "covariancedetectiontime" "CovarianceDetectionTime"
)

# Trova la directory corrispondente al monitor selezionato
list(FIND MONITOR_TO_DIRECTORY_MAP ${DEFAULT_MONITOR} MONITOR_INDEX)
math(EXPR MONITOR_DIR_INDEX "${MONITOR_INDEX} + 1")
list(GET MONITOR_TO_DIRECTORY_MAP ${MONITOR_DIR_INDEX} MONITOR_DIRECTORY)

# Aggiungi sottodirectory per il monitor selezionato
add_subdirectory(${MONITOR_DIRECTORY})

# Configura l'obiettivo principale
add_custom_target(run_monitor ALL DEPENDS ${DEFAULT_MONITOR})

# Comando per eseguire il monitor selezionato
add_custom_command(TARGET run_monitor POST_BUILD
    COMMAND ${CMAKE_BINARY_DIR}/${MONITOR_DIRECTORY}/${DEFAULT_MONITOR}
    COMMENT "Eseguendo il monitor selezionato: ${DEFAULT_MONITOR}"
)