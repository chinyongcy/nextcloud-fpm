FROM nextcloud:fpm
# 30.0.4-fpm
RUN apt update && apt -y install \
    libsmbclient-dev libmagickwand-dev  && \
    pecl install smbclient && \
    echo “extension=smbclient.so” > /usr/local/etc/php/conf.d/docker-php-ext-smbclient.ini && \
    pecl install inotify

