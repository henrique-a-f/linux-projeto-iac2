!#/bin/bash

echo 'Atualizando o servidor'
apt-get update -y
apt-get upgrade -y

echo 'instalando o apache2'
apt-get install apache2 -y

echo 'habilitando serviço apache2'
systemctl enable apache2

echo 'instala unzip'
apt-get install unzip -y

echo 'baixa repositorio de arquivos'
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo 'Descompacta .zip da pasta tmp'
unzip main.zip

echo 'Vai para o diretorio linux-site-dio e copia todos arquivos para /var/www/html'
cd linux-site-dio-main
cp -R * /var/www/html/
