ARG BUILD_FROM
FROM $BUILD_FROM

# Installazione di Nginx
RUN apk add --no-cache nginx

# Creazione della directory per Nginx
RUN mkdir -p /run/nginx

# Copia del file di configurazione
COPY nginx.conf /etc/nginx/http.d/default.conf

# Comando di avvio
CMD [ "nginx", "-g", "daemon off;" ]
