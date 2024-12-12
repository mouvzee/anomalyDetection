#include "main.h"

std::vector<std::vector<double>> covarianceValue(const std::vector<double>& averages, std::map<std::int32_t, std::vector<double>>& sensors) {

    std::vector<std::vector<double>> covariances(sensors.size(), std::vector<double>(sensors.size()));
    std::cout << "CovarianceValue in esecuzione" << std::endl;
    // Scorrimento dei sensori per la creazione della matrice di covarianza
    for(size_t i = 0; i<sensors.size(); i++){

        std::vector<double> sensor1 = sensors[i];

        for(size_t j = 0; j<sensors.size(); j++){


            std::vector<double> sensor2 = sensors[j];

            int numberOfValue = 0;
            double totalSum = 0;

            // Scorrimento dei dati della finestra temporale e calcolo della covarianza
            for(size_t k = 0; k<WINDOW_SIZE; k++){

                if(std::isnan(sensor1[k]) || std::isnan(sensor2[k])){
                    continue;
                }

                totalSum += (sensor1[k] - averages[i]) * (sensor2[k] - averages[j]);
                numberOfValue++;
            }

            // Salvataggio dei dati nella matrice di covarianza
            if(numberOfValue == 0){
                covariances[i][j] = std::nan("");
            }else{
                covariances[i][j] = totalSum/numberOfValue;                
            }

        }

    }
    return covariances;
}