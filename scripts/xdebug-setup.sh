#!/bin/bash

PHP_version=$(php -r 'phpinfo();' | grep -im 1 "php version" | awk '{ print $4}' | awk -F"." '{ print $1"."$2}')

extension_dir=$(php -r 'phpinfo();' | grep -i "extension_dir" | awk '{ print $3 }')

PHP_dir=/etc/php/$PHP_version

if [ $(which phpize) == "" ]; then
	apt-get install php$PHP_version-dev -y
fi

git clone https://github.com/xdebug/xdebug.git /opt/xdebug

cd /opt/xdebug

./rebuild.sh

echo 'zend_extension="'$extension_dir'/xdebug.so"' >> $PHP_dir/apache2/php.ini

service apache2 reload



