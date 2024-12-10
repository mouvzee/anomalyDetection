cmake_minimum_required(VERSION 3.16)
project(ScriptsDB NONE)

# Aggiunge un target personalizzato per eseguire gli script SQL tramite lo script Bash
add_custom_target(create-db ALL
    COMMAND ${CMAKE_COMMAND} -E echo "Esecuzione degli script SQL per creare il database..."
    COMMAND sudo ${CMAKE_SOURCE_DIR}/create.sh
    COMMENT "Creazione del database usando create.sh"
)
