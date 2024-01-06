# Projet_Interconnexion

# 2A SN - Réseau

## Commande pour lancer docker compose (toutes les images)
docker-compose up 
#(-d) pour le mode détaché éxécution arrière plan


## Commmande pour voir tous les containers actifs
docker ps 
#(-a) pour ceux en arrêt

## Commande pour lancer une à une les images

>> Construire l'image à partir du Dockerfile
docker build -t nom_de_votre_image .

>> Démarrer le container
docker build -t nom_de_votre_image .

>> Accéder au bash
docker exec -it nom_de_votre_conteneur bash

>> arrêter le container
docker stop nom_de_votre_conteneur

>> tuer le container 
docker kill nom_de_votre_conteneur
