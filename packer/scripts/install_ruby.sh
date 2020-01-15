#!/bin/bash

echo '*** Обновление APT и установка Ruby и Bundler ***'
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential
echo '*** DONE ***'

echo '*** Проверка версий Ruby и Bundler ***'
ruby -v
bundler -v
echo '*** DONE ***'
