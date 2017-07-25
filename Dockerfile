FROM alpine:latest

RUN apk --no-cache add pdns-backend-bind

COPY pdns.conf named.conf example.local.zone /etc/pdns/

EXPOSE 53/udp
WORKDIR /

ENTRYPOINT [ "/usr/sbin/pdns_server", "--daemon=no" ]
