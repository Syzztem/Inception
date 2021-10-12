# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lothieve <lothieve@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/07/27 18:32:58 by lothieve          #+#    #+#              #
#    Updated: 2021/10/05 14:51:45 by lothieve         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

RUN apk add nginx;

COPY conf/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT nginx
