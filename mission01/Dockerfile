FROM debian:wheezy

RUN apt-get update

RUN apt-get upgrade

RUN apt-get install nginx -y

ADD .bashrc /root/.bashrc

ADD .index.html /usr/share/nginx/www/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]


