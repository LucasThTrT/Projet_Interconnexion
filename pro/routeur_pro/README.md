# Pour lancer uniquement le container :

# construire l'image Docker à partir du Dockerfile
# dans le répertoire courant
# et la taguer avec le nom routeur-pro. 
docker build -t routeur-pro .

# démarre le container et ouvre le terminal 
docker run -it --name routeur-pro routeur-pro /bin/bash

