#!/bin/sh

# Installing WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

wp config create --allow-root --dbname=wp_db --dbuser=db_user --dbpass=123 --dbhost=wp_db:3306
wp core install --url=adbaich.42.fr --title='TACHKOUN 7NA' --admin_user=db_user --admin_password=123456 --admin_email=abdlahdbich@gmail.com --allow-root

# CREATE USER 'db_user' IDENTIFIED BY '123';
# GRANT ALL PRIVILEGES ON *.* TO 'db_user';
# FLUSH PRIVILEGES;
# CREATE DATABASE wp_db;
# FLUSH PRIVILEGES;
