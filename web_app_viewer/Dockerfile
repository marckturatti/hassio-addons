# Usa l'immagine base di nginx
FROM nginx:alpine

# Copia i file della web app e configurazione di nginx
COPY ./www /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/nginx.conf

# Esponi la porta 80
EXPOSE 80
