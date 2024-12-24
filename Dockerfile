FROM nextcloud:30.0.4-fpm
RUN apt update && apt -y install \
    smbclient libsmbclient-dev libmagickwand-dev  && \
    pecl install smbclient
RUN echo "extension=smbclient.so" >> /usr/local/etc/php/conf.d/nextcloud.ini
RUN pecl install inotify