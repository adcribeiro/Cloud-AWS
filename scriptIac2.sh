#!/bin/bash

echo " Atualizando o servidor! "
apt-get update && sudo apt-get upgrade -y

echo "Instalando o Apache!"
apt-get install apache2 -y

echo "Instalando o unzip!"
apt-get install unzip -y

echo"instalando o wget!"
apt-get install wget -y

"echo "Criando pasta tpm!"
mkdir /tmp"

echo "Acessando pasta tpm!"
cd /tmp

echo "Baixando projeto do github!"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo " descompactando arquivos!"
unzip main.zip

echo "acessando a pasta do site!"
cd linux-site-dio-main

echo"Copiando projeto para pasta do Apache"
cp -R * /var/www/html



