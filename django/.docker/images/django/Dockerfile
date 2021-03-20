# Для начала указываем исходный образ, он будет использован как основа
FROM ubuntu:18.10

# RUN выполняет идущую за ней команду в контексте нашего образа.
# Для установки модулей используем команду docker-php-ext-install.
# На каждый RUN создается новый слой в образе, поэтому рекомендуется объединять команды.
RUN apt-get update && apt-get install -y python3.6 python3-pip python3-virtualenv
RUN python3 -m virtualenv --python=/usr/bin/python3 /opt/venv
COPY requirements.txt /home
RUN /opt/venv/bin/pip install -r /home/requirements.txt

# Указываем рабочую директорию
WORKDIR /var/www/project

# Запускаем контейнер
# Из документации: The main purpose of a CMD is to provide defaults for an executing container. These defaults can include an executable,
# or they can omit the executable, in which case you must specify an ENTRYPOINT instruction as well.
# CMD python manage.py runserver 0.0.0.0:8000
CMD . /opt/venv/bin/activate && python manage.py runserver 0.0.0.0:8000