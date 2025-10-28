FROM ubuntu:24.04
LABEL authors="gsxhnd"

# RUN DEBIAN_FRONTEND="noninteractive" apt-get update && apt-get -y install tzdata

RUN apt update && apt -y install tzdata
RUN apt update && apt install -y python python-dev

# RUN apt update
# RUN apt install -y build-essential \
#     gcc \
#     g++ \
#     gdb \
#     clang \
#     make \
#     ninja-build \
#     cmake \
#     autoconf \
#     automake \
#     libtool \
#     valgrind \
#     locales-all \
#     dos2unix \
#     rsync \
#     tar

RUN apt clean