# Supprimer les routes par défaut existantes pour éviter les conflits
ip route del default

# Ajouter une nouvelle route par défaut vers la passerelle
# STATIQUE
ip route add default via 120.0.8.7 dev eth0

# Lancer BIND
/usr/sbin/named -g -c /etc/bind/named.conf -u bind
