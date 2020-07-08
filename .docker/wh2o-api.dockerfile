FROM php:7.4-fpm

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apt-get update \
  && apt install -y --no-install-recommends \
  build-essential \
  git \
  libpq-dev \
  libtidy-dev \
  unzip \
  zip \
  && docker-php-ext-install -j $(nproc) \
  pdo \
  pdo_pgsql \
  pcntl \
  pgsql \
  tidy

RUN chown www-data:www-data /var/www

USER www-data

COPY --chown=www-data:www-data ./wh2o-api/ /var/www/
COPY --chown=www-data:www-data ./wh2o-api/sample.env /var/www/.env

WORKDIR /var/www/

RUN cd storage && touch oauth-private.key && cd ..
RUN sed -i 's/DB_/FFFX_/g' .env
RUN sed -i 's/\=redis/\=array/g' .env
RUN composer install

ENTRYPOINT [ "php", "artisan", "serve", "--port=8000" ]