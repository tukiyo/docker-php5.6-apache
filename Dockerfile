FROM php:5-apache

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get -y install php5-mysql php5-mcrypt curl \
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
