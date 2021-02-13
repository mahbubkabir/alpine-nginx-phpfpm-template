FROM php:8-fpm-alpine

RUN apk add --no-cache $PHPIZE_DEPS

RUN docker-php-ext-install pdo pdo_mysql

RUN pecl install xdebug && docker-php-ext-enable xdebug
