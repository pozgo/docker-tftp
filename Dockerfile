FROM alpine:3.18.4

RUN \
    apk add --no-cache tftp-hpa && \
    mkdir -p /data

WORKDIR /data
VOLUME /data
EXPOSE 69/udp

CMD ["in.tftpd", "--verbose", "--foreground", "--ipv4", "--secure", "--user", "root", "--create", "/data"]
