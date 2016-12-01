FROM php:5.6-apache

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get -y install \
    php5-mysql php5-mcrypt php5-intl curl zip unzip git \
 && php5enmod mcrypt \
 && apt-get clean

#RUN curl -sSL https://getcomposer.org/installer | php \
#    && mv composer.phar /usr/bin/composer \
#    && chmod +x /usr/bin/composer \
COPY ./files/composer.phar /usr/bin/composer
RUN chmod +x /usr/bin/composer

RUN echo "Asia/Tokyo" > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata

COPY ./files/apache.conf /etc/apache2/sites-available/000-default.conf

COPY ./files/php.ini /usr/local/etc/php/

RUN ln -s /etc/php5/mods-available/*.ini /usr/local/etc/php/conf.d/
#ENV PHP_INI_SCAN_DIR "/etc/php5/mods-available"
