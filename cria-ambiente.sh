#!/bin/bash

echo "Atualizando o sistema"
apt update
apt upgrade -y

echo "Instalando o Apache e o Unzip"
apt install unzip -y apache2

echo "Baixando o site e descompactando"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -r * /var/www/html