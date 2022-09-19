FROM alpine:3.16.1

RUN apk update && \
    apk upgrade && \
    apk add --no-cache s-nail && \
    ln -s /usr/bin/mail /usr/bin/mailx && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/mailx"]