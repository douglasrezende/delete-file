#!/bin/bash

# Define o diretório a ser verificado
DIRETORIO="/caminho/do/seu/diretorio"

# Define o número de dias
DIAS=90

# Encontra arquivos mais antigos que X dias e remove
find "$DIRETORIO" -type f -mtime +$DIAS -print -delete

echo "Arquivos com mais de $DIAS dias foram removidos do diretório $DIRETORIO"
