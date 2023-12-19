# Désactiver IPv6 pour assurer la compatibilité dans les environnements uniquement IPv4
IPv6_Enable                   no

# Désactiver les recherches ident pour prévenir les retards pendant les connexions causés par ces recherches
Ident_Lookups                 no

# Créer un nouvel utilisateur système nommé 'enseeiht_user'
adduser enseeiht_user

# Définir le mot de passe pour le nouvel utilisateur créé 'enseeiht_user' à 'password123'
echo "enseeiht_user:password123" | passwd --stdin enseeiht_user

# Créer un répertoire personnel pour 'enseeiht_user' au chemin spécifié
mkdir -p /home/enseeiht_user

# Attribuer la propriété du répertoire personnel de 'enseeiht_user' au même utilisateur et à leur groupe
chown enseeiht_user:enseeiht_user /home/enseeiht_user

# Changer le shell par défaut pour 'enseeiht_user' en bash pour un environnement de ligne de commande standard
usermod -s /bin/bash enseeiht_user

# Définir le nom d'hôte de la machine à 'FTP_Server' à des fins d'identification
hostname FTP_Server

# Ajouter une nouvelle entrée dans le fichier /etc/hosts pour résoudre le nom d'hôte 'FTP_Server' à l'adresse IP 12.12.42.196
echo "12.12.42.196 FTP_Server" >> /etc/hosts

# Restreindre les permissions d'écriture aux fichiers de configuration ProFTPD pour des raisons de sécurité
chmod o-w /etc/proftpd.conf /etc/proftpd/modules.conf /etc/proftpd/proftpd.conf

# Démarrer le service ProFTPD pour activer le serveur FTP
systemctl start proftpd

# Créer un fichier de message de bienvenue dans le répertoire personnel de 'enseeiht_user' avec un message de bienvenue personnalisé
cat <<EOT >> /home/enseeiht_user/welcome_msg.txt
Bienvenue sur le serveur FTP de enseeiht_user !
Votre service FTP fonctionne correctement.
Excellent travail.
EOT

#Ce script effectue plusieurs tâches liées à la configuration d'un utilisateur et à la configuration d'un serveur FTP simple sur un 
#système Linux. Il commence par assurer la compatibilité avec les réseaux IPv4, crée un nouvel utilisateur avec un répertoire personnel 

#et définit leur shell en bash, configure le nom d'hôte pour le serveur FTP, restreint les permissions pour les fichiers de configuration
# pour des raisons de sécurité, et enfin démarre le service FTP. Un message de bienvenue est également créé dans le répertoire personnel 
# de l'utilisateur pour confirmer la configuration réussie du serveur FTP.


