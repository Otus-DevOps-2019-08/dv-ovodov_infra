#!/bin/bash


echo '*** Добавление ключей и репозитория MongoDB ***'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xd68fa50fea312927
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
echo '*** DONE ***'

echo '*** Обновление APT и установка MongoDB ***'
sudo apt update
sudo apt install -y mongodb-org
echo '*** DONE ***'

echo '*** Запуск MongoDB ***'
sudo systemctl start mongod
echo '*** DONE ***'

echo '*** Добавление MongoDB в автозапуск ***'
sudo systemctl enable mongod
echo '*** DONE ***'
