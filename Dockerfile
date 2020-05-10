FROM alpine:latest

MAINTAINER Ben Davis <ben@davisben.com>

RUN	apk update && \
	apk add --no-cache \
	curl \
	git \
	npm \
	php7-cli \
	php7-iconv \
	php7-json \
	php7-mbstring \
	php7-openssl \
	php7-phar \
	php7-zip && \
	curl -sS https://getcomposer.org/installer | php && \
	mv composer.phar /usr/local/bin/composer && \
	chmod +x /usr/local/bin/composer && \
	npm install -g gulp-cli
	
RUN gulp -v
