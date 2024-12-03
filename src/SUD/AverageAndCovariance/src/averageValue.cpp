#include "main.h"

std::vector<double> averageValue(const std::map<std::int32_t, std::vector<double>>& sensors) {
    std::vector<double> averages;  // Vettore per memorizzare le medie

    // Scorri la mappa
    for (const auto& [key, values] : sensors) {
        double sum = 0.0;
        int validCount = 0;  // Contatore dei valori validi

        // Scorri i valori del vettore per ogni chiave
        for (double value : values) {
            if (!std::isnan(value)) {
                sum += value;  // Somma i valori validi
                validCount++;  // Incrementa il contatore dei valori validi
            }
        }

        // Calcola la media solo se ci sono valori validi
        if (validCount > 0) {
            double average = sum / validCount;  // Media dei valori validi
            averages.push_back(average);  // Aggiungi la media al vettore
        } else {
            // Se tutti i valori sono NaN, aggiungi un valore predefinito (ad esempio, NaN)
            averages.push_back(std::nan(""));
        }
    }

    return averages;  // Restituisci il vettore con le medie
}
