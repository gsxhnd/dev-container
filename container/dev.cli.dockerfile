FROM gsxhnd/dev-container:base

USER devpod
WORKDIR /home/devpod
RUN brew install neovim starship
RUN brew install bottom procs htop
RUN brew install exa duf neofetch erdtre tree
RUN brew install neovim bat jq riggrep fzf
RUN brew install lazygit lazydocker onefetch joshuto
RUN brew install mdbook pandoc
RUN brew install httpie httpstate k6
RUN brew install k9s helm kubernetes-cli kind
COPY zshrc zshrc
RUN cat zshrc > .zshrc
RUN rm zshrc
ENTRYPOINT [ "/bin/zsh" ]