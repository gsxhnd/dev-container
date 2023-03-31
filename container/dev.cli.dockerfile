FROM gsxhnd/dev-container:base

USER build
ENV PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"
WORKDIR /workspace
RUN brew install bottom procs htop
RUN brew install fzf lazygit onefetch tree bat erdtree httpie jq
RUN brew install kubernetes-cli k9s

ENTRYPOINT [ "/bin/zsh" ]