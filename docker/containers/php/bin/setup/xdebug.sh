#!/bin/bash

rm -rf /usr/local/etc/php
ln -s /var/docker/etc/php /usr/local/etc/php
pecl config-set php_ini /usr/local/etc/php.ini
pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" >> /usr/local/etc/php/conf.d/00-xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/00-xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/00-xdebug.ini
