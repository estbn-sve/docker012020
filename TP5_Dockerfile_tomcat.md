# TP Dockerfile TOMCAT

**Exercice 1 : Sample tomcat war**
Le but de ce TP est de construire un Dockerfile qui permettra de generer une image docker tomcat avec une application war intégrée
1. Creer un répertoire de projet TP5_Dockerfile_Tomcat
2. Dans ce répertoire projet (microservice) créer un fichier Dockerfile
3. Voici le schéma directeur à suivre :
    * Partir d'une image de base : centos:8
    * Préciser des labels (idéal pour donner des informations lors d'un docker image inspect)
    * Créer un répertoire /opt/tomcat
    * Récupérer un fichier distant : https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50.tar.gz
    * Décompresser l'archive et déplacer tous le contenu de apache-tomcat-8.5.50 dans /opt/tomcat/
    * Installer le package java (via yum)
    * Utiliser la directive **WORKDIR** pour se positionner dans le répertoire "/opt/tomcat/webapps"
    * Récuperer le fichier distant https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war
    * Exposer (rendre visible) le port par défaut tomcat 8080
    * Préciser la commande finale à exécuter : ENTRYPOINT ["/opt/tomcat/bin/catalina.sh"]
    * Préciser l'argument à donner par défaut derrière la commande ENTRYPOINT : CMD ["run"]

----
> Idéalement : Essayer de minimiser le nombre de Layers !!

----

4. Construire une image nommée  tomcat:1.0 à partir de ce Dockerfile
5. Démarrer un nouveau conteneur à partir de cette image :
    * Il faut publier un port !!! (pour acceder au conteneur depuis le docker hôte)
    * Il faudra sans doute le démarrer en mode "détaché"
    * Idéalement on lui donne un nom pour le manager plus facilement
6. Tester l'accès depuis un navigateur sur le docker hôte
