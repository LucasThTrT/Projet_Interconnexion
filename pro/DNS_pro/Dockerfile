FROM ubuntu/bind9
RUN apt-get update && apt-get install -y bind9utils dnsutils
COPY named.conf /etc/bind/named.conf
COPY named.conf.options /etc/bind/named.conf.options
COPY named.conf.local /etc/bind/named.conf.local
COPY domaine1.fr.zone /etc/bind/zones/domaine1.fr.zone
COPY domaine2.com.zone /etc/bind/zones/domaine2.com.zone
COPY ./entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT [ "/entrypoint.sh" ]
