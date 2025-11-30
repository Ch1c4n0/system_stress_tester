
# 🛠️ Stress Test Script (CPU + Memória)

## 📝 Visão Geral
Este script **Bash** automatiza a instalação e execução do **stress-ng**, uma ferramenta de código aberto projetada para submeter um sistema a vários níveis de estresse. Ele é configurado para realizar um teste combinado de **CPU** e **Memória** por uma duração definida.

---

## ⚙️ Pré-requisitos
- Sistema baseado em **Debian/Ubuntu** (usa `sudo apt-get`).
- Permissão para executar comandos com `sudo`.

---

## 🚀 Como Usar
1. Salve o código abaixo em um arquivo, por exemplo:  
   `stress_test.sh`
2. Dê permissão de execução ao arquivo:  
   ```bash
   chmod +x stress_test.sh
2. Execute:  
   ```bash
   ./stress_test.sh


## 🔍 Explicação Detalhada

- `sudo apt-get update`: Atualiza a lista de pacotes.
- `sudo apt-get install stress-ng -y`: Instala a ferramenta **stress-ng**.
- `DURATION=300`: Define duração do teste (5 minutos).
- `CPU_WORKERS=0`: Usa todos os núcleos de CPU.
- `MEM_WORKERS=1`: Usa 1 worker para memória virtual.
- `MEM_BYTES="500M"`: Aloca 500 MB para estresse de memória.
- **Comando principal**:
  ```bash
  stress-ng --cpu $CPU_WORKERS --vm $MEM_WORKERS --vm-bytes $MEM_BYTES --timeout $DURATION --metrics-brief

