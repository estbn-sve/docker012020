# TP6 : Docker Compose - Reprise TP3 bash

**Exercice : Service Nginx - PHP - MYSQL**
Le but de ce TP est de transposer les commandes docker du TP3 dans un fichier docker-compose.yml afin d'obtenir un service orchestré DOCKER comprenant plusieurs conteneurs liés entre eux (ou pas)

1. Créer un répertoire de projet TP6_Dockercompose
2. Dans ce répertoire projet (service) créer un fichier docker-compose.yml
3. **A vous de jouer !!!**
    * Analyser le script TP3_service.sh pour le transposer au format docker compose
> L'avantage de docker-compose :+1: 
    > Une stack network sera automatiquement créée pour isoler les conteneurs de votre docker-compose par rapport aux autres conteneur du docker hôte
    > On peut facilement ajouter des paramètres pour manager les namespaces et cgroups (iolation et contrôle des ressources)
    > Si l'on déclare des composants spécifiques (network, volume) : docker-compose se charge de les créer pour vous via le docker client !!!
4. Une fois satisfaits il est normalement possible du créer vos conteneur via une seule commande : (bien penser à se positionner dans le répertoire courant où se trouve le fichier docker-compose.yml)
```docker-compose up -d ```
