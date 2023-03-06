# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adbaich <adbaich@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/03 11:25:01 by adbaich           #+#    #+#              #
#    Updated: 2023/03/05 19:11:52 by adbaich          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:3.15

RUN		apk update && apk upgrade && apk add --no-cache nginx

EXPOSE	80

CMD     ["/usr/sbin/nginx", "-g", "daemon off;"]
