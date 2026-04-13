FROM docker.io/debian:trixie
LABEL description="Serveur nginx basé sur debian"
RUN apt update -y && apt install nginx -y && apt autoclean -y
RUN rm -rf /var/www/html/*
EXPOSE 80
COPY run-nginx.sh /run-nginx.sh
COPY ./web-page/ /var/www/html
RUN chmod -v +x /run-nginx.sh
CMD ["/run-nginx.sh"]

