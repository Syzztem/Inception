FROM alpine

RUN apk update; apk add nginx wget
RUN adduser -D -g 'www' www;\
    mkdir /var/run/nginx;
RUN echo nameserver 8.8.8.8 > /etc/resolv.conf;\
	wget -O mkcert 'https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64';\
	chmod +x mkcert
RUN ./mkcert -install
RUN	./mkcert localhost

COPY index.html /var/www/localhost/
RUN rm -rf /etc/nginx/http.d

ENTRYPOINT nginx -g "daemon off;"
