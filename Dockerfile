FROM alpine:3.6

MAINTAINER Ron Dutt, ron.dutt@gmail.com

COPY redir.c /usr/src/redir.c
RUN apk add --update alpine-sdk && \
    gcc /usr/src/redir.c -o /usr/bin/redir && \
    strip /usr/bin/redir && \
    apk del alpine-sdk

CMD /usr/bin/redir