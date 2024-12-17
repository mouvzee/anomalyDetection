import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

def crea_grafico_latenza(percorso_csv, colonna_deltatime, output_file='latenza_differenze.png'):
    """
    Crea un grafico delle differenze successive di latenza (in millisecondi) partendo da un file CSV contenente il deltaTime.

    :param percorso_csv: Percorso del file CSV.
    :param colonna_deltatime: Nome della colonna con i valori deltaTime in formato 'HH:MM:SS.ssssss'.
    :param output_file: Percorso per salvare il grafico risultante.
    """
    try:
        # Caricamento dei dati
        df = pd.read_csv(percorso_csv)
        print("Dati caricati con successo!")
        print(df.head())

        # Conversione della colonna deltatime in millisecondi
        df['deltatime_milliseconds'] = pd.to_timedelta(df[colonna_deltatime]).dt.total_seconds() * 1000

        # Calcolo delle differenze successive
        df['differenza'] = df['deltatime_milliseconds'].diff().fillna(0)

        # Stile del grafico
        sns.set_theme(style='whitegrid')
        plt.figure(figsize=(12, 6))

        # Creazione del grafico
        plt.plot(df.index, df['differenza'], marker='o', linestyle='-', color='blue', label='Differenza DeltaTime (ms)')

        # Titoli e etichette
        plt.title("Variazione della Latenza tra Misurazioni Consecutive (ms)")
        plt.xlabel("Indice della Misurazione")
        plt.ylabel("Differenza di DeltaTime (millisecondi)")

        # Griglia e legenda
        plt.grid(True)
        plt.legend()

        # Salvataggio del grafico
        plt.savefig(output_file, dpi=300, bbox_inches='tight')
        print(f"Grafico salvato come '{output_file}'")

        # Mostra il grafico
        #plt.show()

    except Exception as e:
        print(f"Errore durante la creazione del grafico: {e}")


# Parametri
percorso_file = '/home/mouvzee/ingegneria/anomalyDetection/test/timedata2.csv'    # Percorso del file CSV
colonna_deltatime = 'deltatime'             # Nome della colonna del deltaTime
output_file = '/home/mouvzee/ingegneria/anomalyDetection/test/latenza_covarianza2.png'

# Chiamata alla funzione
crea_grafico_latenza(percorso_file, colonna_deltatime, output_file)

