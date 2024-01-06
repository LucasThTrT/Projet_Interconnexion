# Utilisation de l'image Ubuntu
FROM ubuntu

# Mise à jour et installation des paquets nécessaires
RUN apt-get update && \
    apt-get install -y iputils-ping net-tools iproute2 iptables

# Commande de test : rester actif
CMD tail -f /dev/null
