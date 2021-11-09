# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lothieve <lothieve@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/07/27 18:32:58 by lothieve          #+#    #+#              #
#    Updated: 2021/10/22 15:05:28 by lothieve         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

RUN apk add nginx openssl; mkdir /ssl

RUN (cd /ssl && openssl req -nodes -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -subj '/CN=localhost')

COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx"]
