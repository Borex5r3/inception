# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adbaich <adbaich@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/03 11:25:01 by adbaich           #+#    #+#              #
#    Updated: 2023/03/07 14:11:15 by adbaich          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# FROM	alpine:3.15

# RUN		apk update && apk upgrade && apk add --no-cache nginx

# COPY files/default /etc/nginx/sites-available/default

# COPY files/index.html /usr/share/nginx/html/index.html

# EXPOSE	80

# CMD     ["/usr/sbin/nginx", "-g", "daemon off;"]

# LABEL maintainer="contact@devopscube.com"
# FROM ubuntu:18.04   
# RUN  apt-get -y update && apt-get -y install nginx
# COPY files/default /etc/nginx/sites-available/default
# COPY files/index.html /usr/share/nginx/html/index.html
# EXPOSE 80
# CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

FROM	debian:buster-slim

RUN		apt update -y && apt upgrade -y && apt install nginx -y

RUN		mkdir -p /var/www/adbaich.42.fr/html

COPY	files/index.html	/var/www/adbaich.42.fr/html/

COPY	files/nginx.conf	/etc/nginx/nginx.conf

RUN		systemctl start nginx

RUN		ufw allow 'Nginx HTTP'

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]