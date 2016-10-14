FROM alpine:3.4
MAINTAINER ccatlett2000@mctherealm.net

RUN apk add --no-cache dovecot dovecot-mysql dovecot-pigeonhole-plugin \
  && addgroup -g 5000 vmail \
  && adduser -G vmail -u 5000 vmail -h /var/mail -D

CMD ["/usr/sbin/dovecot", "-F"]
