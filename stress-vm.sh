#!/bin/bash

sudo apt-get update
sudo apt-get install stress-ng -y

# Define a duração do teste em segundos (ex: 300 segundos = 5 minutos)
DURATION=300

# Define o número de workers de CPU (0 usa o número de CPUs disponíveis)
CPU_WORKERS=0

# Define o número de workers de memória (1 é suficiente para alocar uma quantidade)
MEM_WORKERS=1

# Define a quantidade de memória a ser estressada (ex: 500MB, ajuste conforme necessário)
MEM_BYTES="500M"

echo "Iniciando teste de estresse de CPU e Memória por $DURATION segundos..."

# Executa o stress-ng
# --cpu 0: Usa todos os núcleos de CPU disponíveis
# --vm 1: Usa um processo worker de memória virtual
# --vm-bytes 500M: Aloca 500MB de memória por worker (neste caso, 500MB total)
# --timeout 300s: Define a duração total do teste
# --metrics-brief: Mostra um breve resumo das métricas no final
stress-ng --cpu $CPU_WORKERS --vm $MEM_WORKERS --vm-bytes $MEM_BYTES --timeout $DURATION --metrics-brief

echo "Teste de estresse concluído."
