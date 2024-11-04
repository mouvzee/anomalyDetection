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
    std::getline(fileCSV, line);
    while (fileCSV.good()) {
        
        // Spacchettamento dati
        Data data;
        std::getline(fileCSV, line);
        line.erase(std::remove(line.begin(), line.end(), ','), line.end());
        //std::cout << line << std::endl; // Debug
        std::istringstream lineStream(line);
        lineStream >> data.sampleTime >> data.sensorID >> data.value;
        
        //std::cout << "sensorID: " << data.sensorID << ", sampleTime: " << data.sampleTime << std::endl; // Debug

        
         try {
            // Controlla se sampleTime e sensorID non sono vuoti e convertili in interi
            if (!data.sensorID.empty() && !data.sampleTime.empty() &&
                std::stoi(data.sensorID) <= SENSOR &&
                std::stoi(data.sampleTime) <= SAMPLETIME) {
                
                dataVector.push_back(data);
            }
        } catch (const std::invalid_argument& e) {
            std::cerr << "Errore: il valore di sensorID o sampleTime non è numerico." << std::endl;
        } catch (const std::out_of_range& e) {
            std::cerr << "Errore: il valore di sensorID o sampleTime è troppo grande." << std::endl;
        }
    }

    fileCSV.close();
    return true;
}