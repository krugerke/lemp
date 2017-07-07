FROM php:fpm
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
ADD . /var/docker
WORKDIR /var/docker
RUN /bin/bash setup.sh