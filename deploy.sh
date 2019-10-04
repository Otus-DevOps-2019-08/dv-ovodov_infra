#!/bin/bash

echo '*** Запуск сервера приложения в папке проекта ***'
git clone -b monolith https://github.com/express42/reddit.git
echo '*** DONE ***'

echo '*** Запуск сервера приложения в папке проекта ***'
cd reddit && bundle install
echo '*** DONE ***'

echo '*** Запуск сервера приложения в папке проекта ***'
puma -d
echo '*** DONE ***'

echo '*** Проверка активности сервера и используемого порта ***'
ps aux | grep puma
echo '*** DONE ***'
