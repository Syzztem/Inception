#!/bin/sh
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    wp-entrypoint.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lothieve <lothieve@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/21 15:10:09 by lothieve          #+#    #+#              #
#    Updated: 2021/10/21 15:16:16 by lothieve         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

sed -e "s/WORDPRESS_DB_NAME/\'$WORDPRESS_DB_NAME'/g" \
	-e "s/WORDPRESS_DB_USER/\'$WORDPRESS_DB_USER\'/g" \
	-e "s/WORDPRESS_DB_PASSWORD/\'$WORDPRESS_DB_PASSWORD\'/g" \
	wp-config-template.txt > /var/www/html/wp-config.php
