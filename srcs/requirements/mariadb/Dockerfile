# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lothieve <lothieve@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/08/09 15:35:51 by lothieve          #+#    #+#              #
#    Updated: 2021/10/22 14:31:08 by lothieve         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

RUN apk add mariadb; \
	mkdir /run/mysqld; \
	chown mysql /run/mysqld; \
	mysql_install_db --user=mysql --datadir=/var/lib/mysql --auth-root-authentication-method=normal

CMD chown -R mysql /var/lib/mysql; mysqld --user=mysql

EXPOSE 3306
