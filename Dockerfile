FROM dduportal/rpi-alpine:edge
MAINTAINER Damien DUPORTAL <damien.duportal@gmail.com>

RUN apk --update add ca-certificates redis
RUN mkdir /data && chown redis:redis /data

VOLUME /data
WORKDIR /data

EXPOSE 6379
USER redis

ENTRYPOINT ["/usr/bin/redis-server"]
CMD []