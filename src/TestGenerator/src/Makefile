# Directory di inclusione e oggetti
IDIR=.
ODIR=../obj
BDIR=../bin

# Compilatore e flag
CC=g++
CFLAGS=-std=c++20 -g -ggdb -Wall -I. -I$(IDIR) -I/usr/include/postgresql -L/usr/local/lib -lpq -lm -lhiredis

# File sorgente, oggetti e dipendenze
DEPS = $(wildcard $(IDIR)/*.h)
SRC = $(wildcard *.cpp)
OBJ = $(patsubst %.cpp, $(ODIR)/%.o, $(SRC))

# Target principale
all: $(BDIR)/main

# Regola per compilare i file oggetto
$(ODIR)/%.o: %.cpp $(DEPS)
	@mkdir -p $(ODIR)  # Crea la directory degli oggetti se non esiste
	$(CC) -c -o $@ $< $(CFLAGS)

# Target per l'eseguibile finale
$(BDIR)/main: $(OBJ)
	@mkdir -p $(BDIR)  # Crea la directory bin se non esiste
	$(CC) -o $@ $(OBJ) $(CFLAGS)

# Target per eseguire il programma
run: all
	$(BDIR)/main

# Target per la pulizia
.PHONY: clean

clean:
	rm -f $(ODIR)/*.o $(BDIR)/* *~ $(IDIR)/*~ core
