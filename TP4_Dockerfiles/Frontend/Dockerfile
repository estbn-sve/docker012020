FROM debian:buster-slim

LABEL maintainer "Pierre"

# Directive RUN pour lancer des commandes sh
RUN apt-get update && apt-get install -yq apache2 php7.3 php7.3-mysql libapache2-mod-php7.3 \
    && apt-get clean

# Déclaration de variables d'environnement
ENV APACHE_RUN_USER=www-data \
    APACHE_RUN_GROUP=www-data \
    APACHE_LOG_DIR=/var/log/apache2 \
    APACHE_LOCK_DIR=/run/lock/apache2 \
    APACHE_PID_FILE=/run/apache2/apache2.pid \
    APACHE_RUN_DIR=/run/apache2

RUN mkdir -p $APACHE_RUN_DIR && mkdir -p $APACHE_LOG_DIR

# Copie de tous les fichier présents dans le contexte du projet 
COPY . /var/www/html/index.php

# Exposition du port 8181 en TCP : ce port sera donc en écoute par défaut lors de la création d'un conteneur à partir de cette image
EXPOSE 80/tcp

# Commande de démarrage du processus apache2
ENTRYPOINT ["/usr/sbin/apache2"]

# Arguments par défaut données à la commande ENTRYPOINT
CMD ["-D", "FOREGROUND"]


