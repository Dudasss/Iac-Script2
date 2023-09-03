#!/bin/bash

echo "Atualizando o servidor."

apt-get update
apt-get upgrade -y

echo "Instalando o Apacha2."

apt-get install apache2 -y

echo "instalando unzip."

apt-get install unzip -y

echo "Abrir o dir /tmp"
cd /tmp

echo "Bainxando o arquivo main.zip"
wget  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "unzipando o arquivo."
unzip main.zip

echo "Abrindo o dir linux-site-dio"
cd linux-site-dio-main

echo "Copiando todos os arquivos para a pasta do apache"
cp -R * /var/www/html


