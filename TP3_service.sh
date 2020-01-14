#!/bin/bash

# Nettoyage
docker stop app_web 2> /dev/null
docker rm app_web 2> /dev/null

# Conteneur front
docker run --name app_web --detach -p 80:80 -v ${PWD}/www/:/usr/share/nginx/html/ nginx:1.17
