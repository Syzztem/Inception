# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lothieve <lothieve@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/08/09 15:34:37 by lothieve          #+#    #+#              #
#    Updated: 2021/11/04 13:11:05 by lothieve         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

RUN apk add -U tzdata; cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime;
RUN apk --update add php7 php7-fpm php7-opcache php7-json php7-mysqli
COPY wp-entrypoint.sh /usr/bin
COPY wp-config-template.txt ./
RUN chmod +x /usr/bin/wp-entrypoint.sh

CMD wp-entrypoint.sh; php-fpm7 -F -R

EXPOSE 9000
