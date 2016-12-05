FROM nimmis/alpine-micro

MAINTAINER skipper <jason@skipperinnovations.com>

COPY root/. /
ENV LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8" \
    LANGUAGE="en_US.UTF-8"

RUN apk update && apk upgrade && \
    apk add mariadb mariadb-client && \
    rm -rf /var/cache/apk/*

VOLUME /data
