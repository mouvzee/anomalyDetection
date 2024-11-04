# Definisci le directory per header, oggetti, e binari
IDIR=.
ODIR=../obj
BDIR=../bin

# Compilatore e opzioni
CC=g++
CFLAGS=-std=c++20 -g -ggdb -fpermissive -L/usr/local/lib -Wall -I. -I$(IDIR) -I/usr/include/postgresql -lpq -lm -lhiredis 

# Trova automaticamente le dipendenze e i file sorgente
DEPS = $(wildcard $(IDIR)/*.h)
SRC = $(wildcard *.cpp)
OBJ = $(patsubst %.cpp, $(ODIR)/%.o, $(SRC))

# Regola per creare le directory degli oggetti e dei binari
$(ODIR):
	mkdir -p $(ODIR)

$(BDIR):
	mkdir -p $(BDIR)

# Regola per creare i file .o, dipendenti dalla creazione di $(ODIR)
$(ODIR)/%.o: %.cpp $(DEPS) | $(ODIR)
	$(CC) -c -o $@ $< $(CFLAGS)

# Regola principale per creare l'eseguibile, dipendente da $(BDIR)
$(BDIR)/main: $(OBJ) $(DEPS) | $(BDIR)
	$(CC) -o $@ $(OBJ) $(CFLAGS)

# Target per eseguire l'eseguibile
run: $(BDIR)/main
	./$(BDIR)/main

# Pulizia
.PHONY: clean
clean:
	rm -f $(ODIR)/*.o $(BDIR)/* *~ $(IDIR)/*~ core
