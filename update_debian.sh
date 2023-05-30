#!/bin/bash

# Verifica se o script está sendo executado como root
if [ "$EUID" -ne 0 ]; then
    echo "Este script precisa ser executado como root."
    exit 1
fi

# Atualiza o sistema
apt update
apt upgrade -y
apt autoremove -y

# Atualiza o Python e o Pip
apt install python3-pip -y
pip3 install --upgrade pip

# Atualiza o Git
apt install git -y

# Atualiza o Node.js e o NPM
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
apt install nodejs -y
npm install -g npm

echo "Atualização concluída."

