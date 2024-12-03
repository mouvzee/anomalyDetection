#include "main.h"

std::vector<Data> createDataWindow(std::vector<Data> &dataVector, int wStart, int wEnd){
    
        std::vector<Data> dataWindow;
    
        // Scorrimento del vettore di dati dei sensori
        for (const Data& data : dataVector) {

            if(std::stoi(data.sampleTime) >= wStart && std::stoi(data.sampleTime) <= wEnd ){
                dataWindow.push_back(data);
                }
            }
        std::cout << "datawindow ok" << std::endl; //Deb

        
        return dataWindow;
}