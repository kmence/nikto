FROM alpine:edge

MAINTAINER Kevin Mence <contact@kevinmence.fr>

RUN apk update && \
  apk add --no-cache perl-net-ssleay nikto && \
  rm -f /tmp/* /etc/apk/cache/*

ENTRYPOINT ["nikto.pl"]

CMD [ "-Help"]
