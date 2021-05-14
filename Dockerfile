FROM php:8.0.6-apache

MAINTAINER Matthew McKinnon <support@comprofix.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get -y install wget vim git zip unzip zlib1g-dev libzip-dev libpng-dev

RUN docker-php-ext-install -j$(nproc) mysqli pdo_mysql gd zip pcntl exif

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN a2enmod headers
RUN a2enmod expires
RUN a2enmod rewrite
RUN a2enmod proxy
RUN a2enmod proxy_http
RUN a2enmod proxy_balancer
RUN a2enmod lbmethod_byrequests
RUN a2enmod ssl

COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer

WORKDIR /
