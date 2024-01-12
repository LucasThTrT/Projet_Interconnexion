listen=NO
listen_ipv6=YES
anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=022
dirmessage_enable=YES
use_localtime=YES
xferlog_enable=YES
connect_from_port_20=YES
chroot_local_user=YES
secure_chroot_dir=/var/run/vsftpd/empty
pam_service_name=vsftpd
pasv_enable=YES
user_sub_token=$USER
local_root=/ftp
ftpd_banner=Bienvenue sur mon serveur FTP.

# Configurations pour le mode passif
pasv_min_port=21100
pasv_max_port=21110

# (Optionnel) Spécifiez l'adresse IP sur laquelle écouter, si nécessaire
listen_address=10.20.30.40


