FROM ubuntu:24.04
LABEL authors="gsxhnd"

# RUN DEBIAN_FRONTEND="noninteractive" apt-get update && apt-get -y install tzdata

RUN apt-get update && apt-get -y install tzdata

RUN apt-get update \
    && apt-get install -y build-essential \
    gcc \
    g++ \
    gdb \
    clang \
    make \
    ninja-build \
    cmake \
    autoconf \
    automake \
    libtool \
    valgrind \
    locales-all \
    dos2unix \
    rsync \
    tar \
    python \
    python-dev \
    && apt-get clean
