FROM php:8.1.11-zts

RUN apt-get update
RUN apt-get install -y git libzip-dev

# Install zip extension for fastest download using composer, zlib for for compression
RUN docker-php-ext-install zip

ADD https://getcomposer.org/download/2.4.2/composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer

WORKDIR /srv/app
