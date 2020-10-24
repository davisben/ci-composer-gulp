FROM alpine:latest

MAINTAINER Ben Davis <ben@davisben.com>

RUN apk update && \
    apk add --no-cache \
    curl \
    git \
    npm \
    php7-bcmath \
    php7-cli \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-gd \
    php7-iconv \
    php7-json \
    php7-mbstring \
    php7-openssl \
    php7-pdo \
    php7-phar \
    php7-session \
    php7-simplexml \
    php7-tokenizer \
    php7-xml \
    php7-zip && \
    curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    chmod +x /usr/local/bin/composer && \
    npm install -g gulp-cli
