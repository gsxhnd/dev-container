FROM alpine:3.10.2
LABEL MAINTAINER = "gsxhnd@gmail.com"

ENV TZ=Asia/Shanghai
<<<<<<< HEAD
ENV FRP_VERSION 0.34.1
=======
ENV FRP_VERSION 0.33.0
>>>>>>> cceebb26e93403fcb90ea90683834de5c4c80451

RUN mkdir /frps && mkdir /frps/conf

ADD ./frps /frps/

VOLUME /frps/conf

WORKDIR /frps