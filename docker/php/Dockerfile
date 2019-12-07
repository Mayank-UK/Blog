FROM php:7.2-fpm-alpine
COPY php.ini /usr/local/etc/php/php.ini
RUN apk update
RUN docker-php-ext-install pdo_mysql
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer
RUN rm /var/cache/apk/*