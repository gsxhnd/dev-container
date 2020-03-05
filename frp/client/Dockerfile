FROM alpine:3.10.2

ENV TZ=Asia/Shanghai
ENV FRP_VERSION 0.31.2

RUN mkdir /frpc && mkdir /frpc/conf

ADD ./frpc /frpc/

VOLUME /frpc/conf

WORKDIR /frpc