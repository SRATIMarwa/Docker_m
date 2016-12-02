FROM ubuntu:16.04

RUN apt-get update && apt-get -y install nginx

EXPOSE 80

ENTRYPOINT ["nginx"]

CMD ["-g", "daemon off;"]
