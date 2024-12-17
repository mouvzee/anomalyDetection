# Anomaly Detection

Il progetto ha l'obiettivo di sviluppare un sistema per il rilevamento delle anomalie in uno stream di dati.

[![C++](https://img.shields.io/badge/C++-00599C?style=for-the-badge&logo=c%2B%2B&logoColor=white)](https://isocpp.org/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Redis](https://img.shields.io/badge/Redis-DC382D?style=for-the-badge&logo=redis&logoColor=white)](https://redis.io/)

Questa repository contiene il codice di un progetto universitario per il corso di [Ingegneria del software](https://corsidilaurea.uniroma1.it/it/view-course-details/2023/29923/20190322090929/1c0d2a0e-d989-463c-a09a-00b823557edd/f5e77c3f-84d5-4123-8b84-8a0a5c597463/15ecc655-f8c0-4c3f-afcf-da46946dcf5f/95212068-f314-40bc-b767-b909de17d286?guid_cv=f5e77c3f-84d5-4123-8b84-8a0a5c597463&current_erogata=1c0d2a0e-d989-463c-a09a-00b823557edd).

Il sistema utilizza formule statistiche per calcolare la media e la covarianza dei dati su finestre temporali configurabili. Successivamente, sfruttando i risultati della deviazione standard, il sistema è in grado di rilevare eventuali anomalie. Ogni volta che viene identificata un'anomalia, il sistema genera un allarme, assicurando un monitoraggio continuo dello stream di dati.

## Struttura del progetto

* `ScriptsDB/` Contiene i file per la creazione del database PostgreSQL
* `build/` Contiene gli eseguibili del codice sorgente
* `src/` Contiene il codice sorgente
  * `src/TestGenerator` Contiene il codice per la lettura dei dati e l'invio di essi su Redis
  * `src/SUD` Contiene il codice per il calcolo statistico e il salvataggio dei dati nel database
  * `src/Monitors` Contiene il codice dei monitors implementati per verificare la correttezza delle funzionalità
* `test/` Contiene i file .CSV generati per costruire grafici e produrre risultati sperimentali

Per maggiori informazioni, [qui](https://github.com/user-attachments/files/18171686/Ingegneria_del_Software.1.pdf) trovate la relazione del progetto

## Prerequisiti

Prima di passare alla compilazione del progetto bisogna avere installati i seguenti programmi

* CMake
* PostgreSQL
* Redis

## Come compilare ed eseguire

Una volta scaricato il progetto, posizionarsi sul percorso `ScriptsDB/build`.

```bash
cmake ..
```

In questo modo sarà generato il makefile che si utilizzerà per eseguire: 

```bash
make create-db
```

Successivamente posizionarsi sul percorso `/build` per eseguire i calcoli statistici.

```bash
cmake .. 
```

A questo punto verranno generati tutti i makefile e potranno essere eseguiti.

```bash
make run_all 
```

Per eseguire i Monitor disponibili bisogna posizionarsi sulle rispettive cartelle:
* Funzionali:
    * Percorso: `/src/Monitors/Functional/build`
    * Monitor disponibili:  checkaverage, checkcovariance, checknumber
```bash
 cmake .. -DDEFAULT_MONITOR=[monitor che si vuole eseguire]
```
Di seguito con un semplice `make` sarà eseguito il monitor scelto.

* Non funzionali:
    * Percorso: `/src/Monitors/NonFunctional/build`
    * Monitor disponibili: averageanomalytime, averagedetectiontime, covarianceanomalytime,           covariancedetectiontime
```bash
 cmake .. -DDEFAULT_MONITOR=[monitor che si vuole eseguire]
```
Di seguito con un semplice `make` sarà eseguito il monitor scelto.

