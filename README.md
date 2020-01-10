# Инфраструктурный репозиторий (курс "DevOps. Практики и инструменты" OTUS.RU)

------
## ДЗ 2 "Локальное окружение инженера. ChatOps и визуализация рабочих процессов. Командная работа с Git. Работа в GitHub."

Ветка play-travis содержит реализацию тестового задания к уроку "Локальное окружение инженера. ChatOps и визуализация рабочих процессов. Командная работа с Git. Работа в GitHub." 

* Добавлена интеграция репо github с каналом Slack
* В репо добавлены файл с юнит-тестом и файл с конфиг для travis-ci
* Добавлена интеграция Slack и travis-ci
* Исправлена ошибка в файле юнит-теста 

------
## ДЗ 3 "Знакомство с облачной инфраструктурой и облачными сервисами."

Ветка cloud-bastion содержит реализацию тестового задания к уроку "Знакомство с облачной инфраструктурой и облачными сервисами."

* Создана запись в GCP
* Создан созданы инстансы ВМ
* Создан VPN сервер
* Добавлена конфиграция брандмауэра
* Настроено подключение к созданым ВМ по SSH
* Рассмотрен метод подключения к ВМ через ProxyJump (ssh -J your.jump.host remote.internal.host)

```
bastion_IP = 35.198.144.243
someinternalhost_IP = 10.156.0.3
```

------
## ДЗ 4 "Основные сервисы Google Cloud Platform (GCP)."

Ветка cloud-testapp содержит реализацию тестового задания к уроку "Основные сервисы Google Cloud Platform (GCP)." 

* Установлена утилита gcloud
* С помощью gcloud создан новый инстанс
* На инстансе установлены ruby и bundler
* На инстансе установлена, запущена и добавлена в автозапуск mongodb
* На инстансе развернуто и запущено тестовое приложение 
* В GCP добавлено правило файрвола для нового инстанса 
* Созданы скрипты для автоматического развертывания тестового приложения
```
testapp_IP = 35.246.195.27
testapp_port = 9292
```

------
## ДЗ 5 "Модели управления инфраструктурой."

Ветка packer-base содержит реализацию тестового задания к уроку "Модели управления инфраструктурой." 

* Установлен packer и go
* Установлено ADC для управления ресурсами GCP через API
* Создан и проверен на валидность шаблон для packer
* С помощью packer создан образ в GCP
* C помощью packer-образа создана ВМ и развернуто приложение
* Добавлен файл с примерами использования других переменных
* Добавлен gitignore

------
## ДЗ 6 " Практика Infrastructure as a Code (IaC)."

Ветка packer-base содержит реализацию тестового задания к уроку "Практика Infrastructure as a Code (IaC)."

* Установлен terraform
* Созданы необходимые конфигурационные файы
* В gitignore добавлены необходимые шаблоны
* Реализован деплой тестового приложения 
* Через terraform реализовано ssh подключение
* Добавлена выходная переменная отображающая ip создаваемого ресурса
* Входные переменные вынесены в отдельный файл
* Все конфигурационные файлы terraform отформатированы командой terraform fmt
* Создан terraform.tfvars.example для отправки в репозиторий на проверку
