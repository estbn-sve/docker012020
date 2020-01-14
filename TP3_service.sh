#!/bin/bash

# Nettoyage
docker stop app_web 2> /dev/null
docker rm app_web 2> /dev/null
docker stop app_php 2> /dev/null
docker rm app_php 2> /dev/null

# Conteneur php
docker run --name app_php -d -v ${PWD}/www/:/srv/http/ phpdockerio/php73-fpm

# Conteneur front
docker run --name app_web --detach -p 80:80 --link app_php:php7 \
                    -v ${PWD}/conf/nginx.conf:/etc/nginx/conf.d/nginx.conf \
                    -v ${PWD}/www/:/usr/share/nginx/html/ \
                    nginx:1.17
