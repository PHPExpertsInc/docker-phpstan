FROM phpstan/phpstan:0.9

RUN apk --update --progress --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.7/community add \
    php7-dom \
    php7-pdo \
    php7-mbstring \
    php7-openssl \
    php7-xmlwriter \
    && composer global require phpstan/phpstan-phpunit weebly/phpstan-laravel
