#This Image serves https://mailcatcher.me/ on ruby:2-alpine.
FROM ruby:2-alpine

LABEL io.datadarius.version="1-beta"
LABEL vendor="datadarius.io"
LABEL io.datadarius.release-date="2016-12-29"
LABEL io.datadarius.version.is-production="false"

ENV RUBY_VERSION 2
ENV MAILCATCHER_VERSION 0.6.5

RUN apk --no-cache add sqlite libstdc++ sqlite-dev \
    && apk --no-cache add --virtual build-deps tzdata build-base \
    && cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime \
    && echo "Europe/Berlin" >  /etc/timezone \
    && gem install mailcatcher -v 0.6.5 --no-ri --no-rdoc \
    && apk del build-deps

EXPOSE 1025 1080

ENTRYPOINT ["mailcatcher", "--foreground"]
CMD ["--ip", "0.0.0.0", "--smtp-port", "1025", "--http-port", "1080"]
