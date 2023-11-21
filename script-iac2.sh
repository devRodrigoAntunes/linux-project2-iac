#!/bin/bash

echo "Atualizando Servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando Apache..."

apt-get install apache2 -y

echo "Instalando Unzip..."
apt-get install unzip -y

cd /tmp

echo "Baixando arquivo..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html





