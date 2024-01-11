FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y apache2 php
CMD /usr/sbin/apache2ctl -D FOREGROUND
WORKDIR /var/www/html
COPY index.html /var/www/html
EXPOSE 80
