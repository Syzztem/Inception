# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lothieve <lothieve@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/08/09 15:34:37 by lothieve          #+#    #+#              #
#    Updated: 2021/10/11 15:42:36 by lothieve         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

RUN apk add php7 php7-fpm php7-opcache php7-json php7-mysqli wget

CMD php-fpm7 -F -R

EXPOSE 9000
