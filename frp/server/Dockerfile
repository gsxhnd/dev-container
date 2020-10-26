FROM alpine:3.10.2
LABEL MAINTAINER = "gsxhnd@gmail.com"

ENV TZ=Asia/Shanghai
ENV FRP_VERSION 0.34.1

RUN mkdir /frps && mkdir /frps/conf

ADD ./frps /frps/

VOLUME /frps/conf

WORKDIR /frps