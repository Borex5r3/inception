#!/bin/bash

#curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && php wp-cli.phar --info && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp


wp config create --allow-root --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=$DB_HOST:$DB_HOST_PORT --path=$WP_PATH
wp core install --url=$DOMAIN_NAME --title='TACHKOUN 7NA' --admin_user=$DB_USER --admin_password=$ADMIN_PASS --admin_email=$ADMIN_EMAIL --allow-root --path=$WP_PATH
wp user create $USER1 $USER1_EMAIL --role=$ROLE1 --allow-root --path=$WP_PATH --user_pass=$USER1_PASS
#service php7.3-fpm start

php-fpm7.3 -R -F
# CREATE USER 'db_user' IDENTIFIED BY '123';
# GRANT ALL PRIVILEGES ON *.* TO 'db_user';
# FLUSH PRIVILEGES;
# CREATE DATABASE wp_db;
# FLUSH PRIVILEGES;
