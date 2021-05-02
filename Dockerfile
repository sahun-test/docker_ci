FROM "php:7.4-apache"
RUN docker-php-source extract  && docker-php-source delete
RUN docker-php-ext-install mysqli
RUN echo "this is docker_ci test" > /var/www/html/index.html
WORKDIR /var/www
