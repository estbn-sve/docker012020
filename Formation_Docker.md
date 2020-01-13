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
