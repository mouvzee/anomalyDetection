

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

def crea_grafico_da_csv(percorso_csv, colonna_x, colonna_y, colonna_upper, colonna_lower, colonna_anomaly, output_file='grafico.png'):
    """
    Funzione per creare un grafico da un file CSV con soglie variabili e punti colorati per anomalie.

    :param percorso_csv: Percorso del file CSV.
    :param colonna_x: Nome della colonna da usare per l'asse X.
    :param colonna_y: Nome della colonna da usare per l'asse Y.
    :param colonna_upper: Nome della colonna con la soglia superiore.
    :param colonna_lower: Nome della colonna con la soglia inferiore.
    :param colonna_anomaly: Nome della colonna che indica se è un'anomalia (True/False).
    :param output_file: Nome del file per salvare il grafico.
    """
    try:
        # Carica i dati dal CSV
        df = pd.read_csv(percorso_csv)
        print("Dati caricati con successo!")
        print(df.head())

        # Imposta lo stile usando set_theme()
        sns.set_theme(style='darkgrid')
        plt.figure(figsize=(12, 6))

        # Disegna le linee delle soglie
        plt.plot(df[colonna_x], df[colonna_upper], color='green', linestyle='-', linewidth=1.5, label='Threshold')
        plt.plot(df[colonna_x], df[colonna_lower], color='orange', linestyle='-', linewidth=1.5, label='Lower Threshold')

        # Disegna i punti: rossi se isAnomaly == true, blu altrimenti
        colori = df[colonna_anomaly].apply(lambda x: 'red' if str(x).lower() == 't' else 'blue')
        plt.scatter(df[colonna_x], df[colonna_y], c=colori, label='Valori')

        # Titolo e label
        plt.title("Grafico con soglie dinamiche e anomalie evidenziate")
        plt.xlabel(colonna_x)
        plt.ylabel(colonna_y)

        # Aggiungi la legenda
        plt.legend()

        # Salva il grafico
        plt.savefig(output_file, dpi=300, bbox_inches='tight')
        print(f"Grafico salvato come '{output_file}'")

    except Exception as e:
        print(f"Errore: {e}")


# Parametri
percorso_file = '/home/mouvzee/ingegneria/anomalyDetection/test/covariance2.csv'          # File CSV
colonna_asse_x = 'sensorid'          # Colonna asse X
colonna_asse_y = 'value'          # Colonna asse Y
colonna_upper = 'upperthreshold'   # Colonna per soglia superiore
colonna_lower = 'lowerthreshold'   # Colonna per soglia inferiore
colonna_anomaly = 'isanomaly'      # Colonna per anomalie
output_file = '/home/mouvzee/ingegneria/anomalyDetection/test/grafico.png' # File di output

# Esegui la funzione
crea_grafico_da_csv(percorso_file, colonna_asse_x, colonna_asse_y, colonna_upper, colonna_anomaly, output_file)
