#include "main.h"


bool readFileCSV(std::string fileName, std::vector<Data> &dataVector) { 
    
    // Apertura file CSV
    std::ifstream fileCSV(fileName);
    if (!fileCSV.is_open()) {
        std::cerr << "Impossibile aprire il file CSV al path " << fileName << std::endl;
        return false;
    }

    // Lettura file CSV
    std::string line;
    std::getline(fileCSV, line); // Salto la prima riga
    while (std::getline(fileCSV, line)) {
        
        // Spacchettamento dati
        std::stringstream ss(line);
        std::string sensorID, sampleTime, value;

        std::getline(ss, sampleTime, ',');
        std::getline(ss, sensorID, ',');
        std::getline(ss, value, ',');

        Data data = {sampleTime, sensorID, value};

        dataVector.push_back(data);
        
    }

    for (Data data : dataVector) {
        std::cout << data.sampleTime << " " << data.sensorID << " " << data.value << std::endl;
    }

    fileCSV.close();
    return true;
}