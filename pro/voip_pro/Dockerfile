# Construction de l'image
FROM andrius/asterisk

# Installation des paquets nécessaires
RUN apk update && \
    apk add --no-cache iputils \
    net-tools \
    iproute2 \
    iptables

# Copiez les fichier de configuration dans le container
COPY ./extensions.conf /etc/asterisk/
COPY ./users.conf /etc/asterisk/
COPY ./asterisk.conf /etc/asterisk/
