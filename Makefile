# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adbaich <adbaich@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/03 11:24:46 by adbaich           #+#    #+#              #
#    Updated: 2023/03/03 11:24:47 by adbaich          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #




all:
	@docker compose -f srcs/docker-compose.yml up --build -d

stop:
	@docker compose -f srcs/docker-compose.yml down

clean:
	@docker rm -f $$(docker ps -aq) &> /dev/null ; true

fclean: clean
	@docker system prune -af
	
	@docker volume rm -f $$(docker volume ls -q)  &> /dev/null ; true
	@docker network rm -f $$(docker network ls -q) &> /dev/null ; true
	@doas rm -rf /home/adbaich/data/mariadb/*
	@doas rm -f /home/adbaich/data/wordpress/wp-config.php

re: fclean all
