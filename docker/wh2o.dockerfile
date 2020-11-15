FROM composer:1.8 as build

COPY ./wh2o/ /var/www

WORKDIR /var/www

RUN composer install

CMD ["php", "artisan", "serve"]