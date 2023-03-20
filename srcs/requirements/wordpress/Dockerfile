# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adbaich <adbaich@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/09 14:03:22 by adbaich           #+#    #+#              #
#    Updated: 2023/03/19 12:48:37 by adbaich          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


FROM	debian:buster-slim

RUN		apt-get update -y && apt-get upgrade -y && apt-get install php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath vim curl -y

COPY    ./requirements/wordpress/files/php.ini	/etc/php/7.3/fpm/php.ini

COPY    ./requirements/wordpress/wordpress /var/www/html

COPY    ./requirements/wordpress/www.conf  /etc/php/7.3/fpm/pool.d/www.conf

CMD ["bash"]