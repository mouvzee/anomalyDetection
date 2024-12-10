cmake_minimum_required(VERSION 3.16)
project(MonitorSelector)

# Opzione per scegliere quale monitor eseguire
set(DEFAULT_MONITOR "checkaverage" CACHE STRING "Seleziona il monitor da eseguire: checkaverage, checkcovariance, checknumber")

# Elenca gli eseguibili disponibili
set(MONITOR_EXECUTABLES
    "checkaverage"
    "checkcovariance"
    "checknumber"
)

# Controlla che il monitor selezionato sia valido
list(FIND MONITOR_EXECUTABLES ${DEFAULT_MONITOR} MONITOR_INDEX)
if(MONITOR_INDEX EQUAL -1)
    message(FATAL_ERROR "Monitor non valido selezionato: ${DEFAULT_MONITOR}. Valori possibili: ${MONITOR_EXECUTABLES}")
endif()

# Aggiungi i sottoprogetti dei monitor (assicurati che i CMakeLists.txt di ogni cartella generino un eseguibile con lo stesso nome della directory)
add_subdirectory(Functional/CheckAverage)
add_subdirectory(Functional/CheckCovariance)
add_subdirectory(Functional/CheckNumber)

# Crea un target personalizzato per eseguire il monitor selezionato
add_custom_target(run_selected_monitor
    COMMAND ${CMAKE_BINARY_DIR}/${DEFAULT_MONITOR}/${DEFAULT_MONITOR}
    COMMENT "Esecuzione del monitor selezionato: ${DEFAULT_MONITOR}"
)
