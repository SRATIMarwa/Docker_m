FROM ubuntu:16.04

RUN apt-get update && apt-get -y install nginx

EXPOSE 80

ADD index.html /var/www/html/index.html

VOLUME /var/www/html

ENTRYPOINT ["nginx"]

CMD ["-g", "daemon off;"]
