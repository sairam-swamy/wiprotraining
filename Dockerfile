FROM ubuntu:20.04
RUN apt update && mkdir /sairam && apt install -y nginx
COPY index.html /var/www/html/index.nginx-debian.html
ADD style.css /var/www/html
CMD ["nginx", "-g", "daemon off;"]
