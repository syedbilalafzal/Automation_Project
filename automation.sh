#!/bin/bash
s3_bucket="upgrad-syedbilalafzal"
myname="syedbilalafzal"

sudo apt update -y
status=$(dpkg -s apache2 2> /dev/null | grep "Status: install ok installed")

if [ ! "${status}" = 'Status: install ok installed'  ]; then
	sudo apt install apache2 -y
fi


running=$(sudo systemctl is-active apache2)
enabled=$(sudo systemctl is-enabled apache2)

if [ ! "${status}" = 'active'  ]; then
        sudo systemctl start apache2
fi

if [ ! "${enabled}" = 'enabled'  ]; then
        sudo systemctl enable apache2
fi

timestamp=$(date '+%d%m%Y-%H%M%S')

sudo tar cvf /tmp/${myname}-httpd-logs-$timestamp.tar /var/log/apache2/*.log


aws s3 cp /tmp/${myname}-httpd-logs-${timestamp}.tar s3://${s3_bucket}/${myname}-httpd-logs-${timestamp}.tar


