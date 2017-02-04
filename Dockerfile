FROM alpine
MAINTAINER Andrew <me@duck.me.uk>

RUN apk add --no-cache python3 libusb gnuplot
RUN python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip
RUN pip3 install --upgrade pip libusb1 python-twitter oauth2 tzlocal pycrypto paramiko
RUN pip3 install pywws

VOLUME ["/var/data"]
