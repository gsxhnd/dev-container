FROM ubuntu:22.10

RUN apt update && apt install -y curl zsh git
RUN apt install -y build-essential clang
RUN apt install -y flex bison g++ gawk gcc-multilib gettext mkisofs
RUN apt install -y libncurses5-dev libssl-dev python3-distutils rsync unzip zlib1g-dev file wget

RUN useradd -c "OpenWrt Builder" -m -d /home/build -G sudo -s /usr/bin/zsh build
RUN echo 'build ALL=NOPASSWD: ALL' >> /etc/sudoers
RUN echo 'root:root' | chpasswd
RUN echo 'build:build' | chpasswd

USER build
RUN git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
RUN cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

WORKDIR /home/build
RUN git clone https://git.openwrt.org/openwrt/openwrt.git && cd openwrt && git pull && git checkout openwrt-22.03

WORKDIR /home/build/openwrt
RUN wget https://downloads.openwrt.org/releases/22.03.3/targets/x86/64/config.buildinfo -O .config
RUN ./scripts/feeds update -a
RUN ./scripts/feeds install -a
RUN make download V=s
RUN ls -al
