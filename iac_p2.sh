#! /bin/bash

echo "Instalar programas e atualizar sistema!!!"

apt-get install apache2 -y
apt-get install unzip -y
apt-get update -y
apt-get upgrade -y

echo "Baixar arquivo e apontar pra diretorio correto..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "Finalizado."
