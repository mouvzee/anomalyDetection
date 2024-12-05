#include "main.h"

void detectAnomaly(std::map<std::int32_t, std::vector<Data>> &dataVector, std::map<std::int32_t, std::vector<Average>> &averages){

    //debug
    if(dataVector.empty() || averages.empty()){
    throw std::logic_error("Input dataVector or averages is empty");
    }


    // Calcolo della grandezza della finestra temporale e scorrimento sui dati dei sensori
    std::int32_t key = averages.begin()->first;
    size_t windowSize = averages[key][0].lastSampleTime + 1;
    for(auto& sensor : dataVector){
        for(size_t i = 0; i<sensor.second.size() - windowSize + 1; i++){

            int numberOfValues = 0;
            Average average = averages[sensor.first][i];
            double deviation = 0;

            // Scorrimento sulla finestra temporale e calcolo della deviazione standard
            double sensorValue;
            for(int j = i; j < windowSize + i; j++){

                if(j >= sensor.second.size() || i >= averages[sensor.first].size()){
                    std::cerr << "Invalid index access for sensor " << sensor.first << std::endl;
                    continue;
                }


                if(sensor.second[j].value.empty() || sensor.second[j].value == ""){
                    //std::cerr << "Valore del sensore " << sensor.first << " ignorato alla posizione " << j << std::endl;
                    continue;
                }

                sensorValue = std::stod(sensor.second[j].value);
                
                deviation += std::pow(sensorValue - average.value, 2);
                numberOfValues++;

            }

            if(numberOfValues == 0){
                dataVector[sensor.first][average.lastSampleTime].isAverageAnomaly = false;
                dataVector[sensor.first][average.lastSampleTime].upperThreshold = std::nan("");
                dataVector[sensor.first][average.lastSampleTime].lowerThreshold = std::nan("");
                continue;
            }

            double standardDeviation = std::sqrt(deviation / numberOfValues);

            if(average.value - (theta * standardDeviation) <= sensorValue && average.value + (theta * standardDeviation) >= sensorValue){
                dataVector[sensor.first][average.lastSampleTime].isAverageAnomaly = false;
                dataVector[sensor.first][average.lastSampleTime].upperThreshold = average.value + (theta * standardDeviation);
                dataVector[sensor.first][average.lastSampleTime].lowerThreshold = average.value - (theta * standardDeviation);
            }else{
                dataVector[sensor.first][average.lastSampleTime].isAverageAnomaly = true;
                dataVector[sensor.first][average.lastSampleTime].upperThreshold = average.value + (theta * standardDeviation);
                dataVector[sensor.first][average.lastSampleTime].lowerThreshold = average.value - (theta * standardDeviation);
            }

        }
    }

    return;
}


