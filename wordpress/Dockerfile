# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adbaich <adbaich@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/09 14:03:22 by adbaich           #+#    #+#              #
#    Updated: 2023/03/09 16:13:14 by adbaich          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


FROM	debian:buster-slim

RUN		apt-get update -y && apt-get upgrade -y && apt-get install php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath -y

COPY    ./files/php.ini	/etc/php/7.3/fpm/php.ini

COPY    ./wordpress /var/www/html/wordpress

RUN     chown -R www-data:www-data /var/www/html/wordpress
