FROM gsxhnd/dev-container:base

USER devpod
WORKDIR /home/devpod
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && \
    brew install neovim starship \
    bottom procs htop \
    exa duf neofetch erdtre tree \
    bat jq riggrep fzf \
    lazygit lazydocker onefetch joshuto \
    httpie httpstate k6 \
    k9s helm kubernetes-cli kind
COPY zshrc zshrc
RUN cat zshrc > .zshrc
RUN rm zshrc

ENTRYPOINT [ "/bin/zsh" ]