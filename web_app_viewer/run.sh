#!/bin/bash
# Avvia Nginx con la configurazione personalizzata

# Leggi la configurazione dei parametri
SERVER_URL=$(jq -r '.server_url' /data/options.json)
SERVER_PORT=$(jq -r '.server_port' /data/options.json)

# Modifica il file di configurazione di nginx
sed -i "s|http://localhost|$SERVER_URL|g" /etc/nginx/nginx.conf
sed -i "s|8080|$SERVER_PORT|g" /etc/nginx/nginx.conf

# Avvia Nginx
nginx -g "daemon off;"
