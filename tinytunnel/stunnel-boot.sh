exec 2>&1
source /etc/envvars
exec /usr/bin/stunnel /etc/stunnel/tunnel.conf
