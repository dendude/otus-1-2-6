#!/bin/bash

mkdir -p ${LOG_DIR}
touch ${LOG_DIR}/error.log
chown ${USER_APACHE}:${USER_APACHE} ${LOG_DIR}/error.log

sed -i \
    -e 's~AllowOverride \(.*\)$~AllowOverride All~g' \
    -e 's~^ErrorLog \(.*\)$~ErrorLog "'${LOG_DIR}'/error.log"~g' \
    /etc/httpd/conf/httpd.conf

rm -rf /run/httpd/* /tmp/httpd*

exec /usr/sbin/apachectl -DFOREGROUND
