#include <main.h>

void createMap(std::vector<Data> dataWindow, std::map<std::int32_t, std::vector<double>> &sensors){
        
        //std::map<std::string, std::vector<double>> sensors;
        
        // Scorrimento dei dati della finestra temporale
        for(const Data& data : dataWindow){
            
            if (data.value == "NULL") {
                sensors[std::stoi(data.sensorID)].push_back(std::nan(""));
            } else {
                sensors[std::stoi(data.sensorID)].push_back(std::stod(data.value));
            }
        }     
}