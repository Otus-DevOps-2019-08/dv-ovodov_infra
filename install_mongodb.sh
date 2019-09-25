#!/bin/bash


echo '*** Добавление ключей и репозитория MongoDB ***'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
echo '*** DONE ***'

echo '*** Обновление APT и установка MongoDB ***'
sudo apt update
sudo apt install -y mongodb
echo '*** DONE ***'

echo '*** Запуск MongoDB ***'
sudo systemctl start mongodb
echo '*** DONE ***'

echo '*** Добавление MongoDB в автозапуск ***'
sudo systemctl enable mongodb
echo '*** DONE ***'
