#!/bin/bash

# Nettoyage
docker stop app_web 2> /dev/null
docker rm app_web 2> /dev/null
docker stop app_php 2> /dev/null
docker rm app_php 2> /dev/null
docker stop app_bdd 2> /dev/null
docker rm app_bdd 2> /dev/null
# Conteneur de base de donnée 
docker run --name app_bdd -d -e MYSQL_ROOT_PASSWORD=roottoor \
                         -v ${PWD}/data:/var/lib/mysql:rw \
                         mariadb:10.2
# Conteneur php
docker run --name app_php -d -v ${PWD}/www/:/srv/http/ \
                      --link app_bdd:bdd \
                      phpdockerio/php73-fpm

# Conteneur front
docker run --name app_web --detach -p 80:80 --link app_php:php7 \
                    -v ${PWD}/conf/nginx.conf:/etc/nginx/conf.d/nginx.conf \
                    -v ${PWD}/www/:/usr/share/nginx/html/ \
                    nginx:1.17
