FROM ubuntu:22.10


RUN apt update && apt install -y curl zsh git sudo build-essential

RUN useradd -c "Developer" -m -d /home/devpod -G sudo -s /usr/bin/zsh devpod
RUN echo 'build ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
RUN echo 'root:root' | chpasswd
RUN echo 'devpod:devpod' | chpasswd
# RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


USER devpod
WORKDIR /home/devpod
RUN git clone --depth=1 https://github.com/Homebrew/install.git
RUN cd install && NONINTERACTIVE=1 ./install.sh

RUN git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
RUN cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && brew --version

ENTRYPOINT [ "/bin/zsh" ]