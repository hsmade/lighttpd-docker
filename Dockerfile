FROM alpine:3.9
RUN apk add --update --no-cache lighttpd lighttpd-mod_auth && rm -rf /var/cache/apk/*
COPY etc/lighttpd/* /etc/lighttpd/
COPY entrypoint.sh /
EXPOSE 80
VOLUME /var/www/localhost
VOLUME /etc/lighttpd
ENTRYPOINT ["/entrypoint.sh"]
