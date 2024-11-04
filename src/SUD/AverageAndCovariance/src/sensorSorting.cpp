#include "main.h"

bool sensorSorting(const std::string &str1, const std::string &str2) {
    try {
        // Converte direttamente l'intera stringa in numero
        int num1 = std::stoi(str1);
        int num2 = std::stoi(str2);

        std::cout << "sorting ok" << std::endl;
        return num1 < num2;

    } catch (const std::invalid_argument& e) {
        std::cerr << "Errore: Impossibile convertire in numero - " << e.what() << std::endl;
        return false;

    } catch (const std::out_of_range& e) {
        std::cerr << "Errore: Numero fuori dal range - " << e.what() << std::endl;
        return false;
    }
}
