#!/bin/bash

echo ${DOMAIN_NAME:=sample.org} > /etc/mailname
sed -i "s/dc_other_hostnames='.*'/dc_other_hostnames='$DOMAIN_NAME'/g" /etc/exim4/update-exim4.conf.conf

/usr/sbin/update-exim4.conf

exec -c /usr/sbin/exim4 $@