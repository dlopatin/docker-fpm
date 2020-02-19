FROM alpine:latest

RUN apk add --no-cache \
        ruby \
        ruby-dev \
        gcc \
        libffi-dev \
        make \
        libc-dev \
        rpm \
    && gem install etc --no-document fpm


RUN fpm -v

# Define default command.
CMD ["sh"]


