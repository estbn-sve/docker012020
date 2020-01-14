# Formation Docker

## Commandes hote :
```
docker version
docker info
```

## Commandes docker client :
```
docker --help
docker search
```

# Telecharger une image docker depuis le HUB
```
docker pull [IMAGE:VERSION]
docker pull debian:jessie
```

# Lister les images disponibles sur l'hote:
```
docker images
```

# Creer et demarrer un container sans options 
```docker run debian:jessie```

# Creer et demarrer un container en mode interactif
### -t : tty
### -i : interactif
```docker run -it debian:jessie /bin/bash```

# Lister les containers actif 
```docker ps```

# Lister touts les containers (actif et arrêtés)
```docker ps -a```

# Démarrer un container
```docker start [ID|NOM]```

# Stopper un container
```docker stop [ID|NOM]```

# Demarrer un container en background : detaché
```docker run -d -it debian:jessie```

# Publier et forwarder les ports reseau
```docker run -d --publish-all training/webapp```

# Publier et forwarder un port specifique
```docker run -d --publish 80:5000 training/webapp```

# Visualiser les Logs d'un container
```
docker logs ID
docker logs -f ID
```

# docker inspect 
```docker inspect [container|network|etc....]```

# Supprimer un container 
```docker rm [ID]```

# Utilisation des ID pour stop & remove
```docker stop $(docker ps -q) && docker rm $(docker ps -aq)```

# Docker commit : création d'une image à partir d'un conteneur
```docker commit -m  "Ajout VIM + index.html perso" -a Pierre romantic_antonelli formation/nginx:formation```

# Presentation des volumes :
```docker run --name app_web --detach --publish 80:80 --volume ${PWD}/www/:/usr/share/nginx/html/ nginx:1.17```

# Presentation liaison link :
```
docker run -it -d --name app_front --link app_web:app_web alpine-curl:1.0
docker exec app_front curl app_web
```

# Visualisation des ressources container
```docker stats```

# Presentation dockerfile et docker build
```docker build -t apache_formation:1.0 .```

# Outils d'analyse Dockerfile
https://www.fromlatest.io/

# Creation volume simple 
```docker volume create --name formation```

# Utilisation du volume predefini dans un conteneur 
```docker run -it --volume formation:/formation-ctn ubuntu:18.04```

# Creation d'un network dedie
```docker network create --driver=bridge --subnet=172.20.0.0/16 --gateway=172.20.0.1 formationvlan```

# Utilisation d'un network dedie pour un conteneur
```docker run -it --net=formationvlan ubuntu:18.04```
