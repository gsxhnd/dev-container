FROM ubuntu:22.10


RUN apt update && apt install -y curl zsh git sudo build-essential

RUN useradd -c "Developer" -m -d /home/build -G sudo -s /usr/bin/zsh build
RUN echo 'build ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

USER build
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
RUN git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
RUN cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
RUN echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc
RUN ls -al /home/linuxbrew/.linuxbrew

ENTRYPOINT [ "/bin/zsh" ]