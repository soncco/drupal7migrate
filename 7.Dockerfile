FROM drupal:7-apache

RUN apt-get update \
  && apt-get install -y vim git unzip

COPY "drupal.ini" "/usr/local/etc/php/conf.d/drupal.ini"