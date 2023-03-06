# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adbaich <adbaich@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/03 11:25:01 by adbaich           #+#    #+#              #
#    Updated: 2023/03/06 19:18:21 by adbaich          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# FROM	alpine:3.15

# RUN		apk update && apk upgrade && apk add --no-cache nginx

# COPY files/default /etc/nginx/sites-available/default

# COPY files/index.html /usr/share/nginx/html/index.html

# EXPOSE	80

# CMD     ["/usr/sbin/nginx", "-g", "daemon off;"]

LABEL maintainer="contact@devopscube.com"
FROM ubuntu:18.04   
RUN  apt-get -y update && apt-get -y install nginx
COPY files/default /etc/nginx/sites-available/default
COPY files/index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
