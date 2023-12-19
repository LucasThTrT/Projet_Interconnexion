# Accès au terminal container 
# de facon unique :

## EXECUTER EN SUDO SU
##Construire l'image Docker
docker build -t voip .

##Exécuter le conteneur Docker
docker run -d --name voip voip

##Accéder au shell du conteneur
docker exec -it voip ash

##Stopper le container
docker stop voip

##Supprimer le conteneur existant "voip"
docker rm voip

##Ces commandes vous permettront de créer une image Docker
##nommée voip, de lancer un conteneur à partir de cette image,
##puis d'accéder au shell du conteneur en utilisant 
##le shell BusyBox appelé ash
