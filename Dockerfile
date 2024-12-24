FROM nextcloud:fpm
# 30.0.4-fpm
RUN apt update && apt -y install \
    smbclient libsmbclient-dev libmagickwand-dev  && \
    pecl install smbclient
RUN echo "extension=smbclient.so" > /usr/local/etc/php/conf.d/docker-php-ext-smbclient.ini
RUN echo "extension=smbclient.so" >> /usr/local/etc/php/conf.d/nextcloud.ini