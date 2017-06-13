FROM alpine:latest
LABEL maintainer "Andrew <me@duck.me.uk>"

RUN apk add --no-cache python3 \
    libusb \
    py3-cffi \
    openssl \
    libc-dev \
    python3-dev \
    gcc \
    py3-cryptography \
    gnuplot
RUN pip3 install --upgrade pip
RUN pip3 install \
    libusb1 \
    python-twitter \
    oauth2 \
    tzlocal \
    pycrypto \
    paramiko \
    pywws

VOLUME ["/var/data"]
