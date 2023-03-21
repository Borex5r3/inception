# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adbaich <adbaich@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/14 11:24:44 by adbaich           #+#    #+#              #
#    Updated: 2023/03/21 16:11:22 by adbaich          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster-slim

RUN		apt-get update -y && apt-get upgrade -y && apt-get install -y mariadb-server vim

COPY    ./requirements/mariadb/conf/my.cnf	/etc/mysql/my.cnf

COPY    ./requirements/mariadb/conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE	3306

CMD		["mysqld"]