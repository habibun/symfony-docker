FROM php:7.3.11-fpm

RUN apt-get update
RUN apt-get install -y wget gnupg
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get remove cmdtest -y
RUN apt-get update -y
RUN apt-get install -y \
        unzip \
        zip \
        libzip-dev \
        libwebp-dev \
        libpng-dev \
        zlib1g-dev \
        git \
        nodejs \
        yarn \
        npm \
        nano \
        supervisor \
        openssh-server rsync libicu-dev
RUN docker-php-ext-install zip pdo_mysql mysqli opcache bcmath intl gd
RUN pecl install apcu && echo "extension=apcu.so" > /usr/local/etc/php/conf.d/apcu.ini
RUN pecl install redis && echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini
RUN pecl install igbinary && echo "extension=igbinary.so" > /usr/local/etc/php/conf.d/igbinary.ini
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

COPY phpconf.ini /usr/local/etc/php/conf.d/phpconf.ini

RUN apt-get install -y python-pydot python-pydot-ng graphviz

WORKDIR /var/www/

CMD ["php-fpm"]
