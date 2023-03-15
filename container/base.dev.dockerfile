FROM ubuntu:22.10


RUN apt update && apt install -y curl zsh git

RUN useradd -c "Developer" -m -d /home/dev -G sudo -s /usr/bin/zsh dev
RUN echo 'dev ALL=NOPASSWD: ALL' >> /etc/sudoers
RUN echo 'root:root' | chpasswd
RUN echo 'dev:dev' | chpasswd
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

USER dev
ENV PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"
RUN git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
RUN cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
RUN brew --version