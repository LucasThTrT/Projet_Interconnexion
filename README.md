# Projet_Interconnexion

# 2A SN - Réseau

## Commande pour lancer docker compose (toutes les images) (compose de la racine)
>> docker-compose up 
#(-d) pour le mode détaché éxécution arrière plan

## Pour docker-compose sur une partie du projet
>> docker-compose -f autre-compose.yml up

## Commmande pour voir tous les containers actifs
>> docker ps 
#(-a) pour ceux en arrêt

## Commande pour lancer une à une les images

Construire l'image à partir du Dockerfile
>> docker build -t nom_de_votre_image .

Accéder au bash
>> docker run -it -P nom_image bash

Démarrer le container sans le bash
>> docker build -t nom_de_votre_image .

Arrêter le container
>> docker stop nom_de_votre_conteneur

Tuer le container 
>> docker kill nom_de_votre_conteneur
