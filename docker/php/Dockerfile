FROM php:8.2.0-fpm-alpine3.17

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Work in the specific space
WORKDIR /var/www/html
