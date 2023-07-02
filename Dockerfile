FROM alpine:3.18
RUN apk add --no-cache dnsmasq

VOLUME /config

ENTRYPOINT ["dnsmasq", "-k", "-C", "/config/dnsmasq.conf"]
