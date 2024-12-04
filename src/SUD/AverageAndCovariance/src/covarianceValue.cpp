#include "main.h"

std::vector<std::vector<double>> covarianceValue(std::vector<double> averages, std::map<std::int32_t, std::vector<double>> &sensors){
    std::vector<std::vector<double>> covariances(sensors.size(), std::vector<double>(sensors.size()));
    for(size_t i = 0; i<sensors.size(); i++){
        for(size_t j = 0; j<sensors.size(); j++){
            int numberOfValue = 0;
            double totalSum = 0;
            for(size_t k = 0; k < WINDOW_SIZE; k++){
                totalSum += (sensors[i][k] - averages[i]) * (sensors[j][k] - averages[j]);
                numberOfValue++;
            }
            if(numberOfValue == 0){
                covariances[i][j] = std::nan("");
            }else{
                covariances[i][j] = totalSum/numberOfValue;                
            }
        }
    }
    return covariances;
    

}