FROM gsxhnd/dev-container:cli

USER devpod
WORKDIR /home/devpod
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && \
    brew install go go-task goreleaser \
    protobuf protoc-gen-go protoc-gen-go-grpc \
    node yarn wasm-pack
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

ENTRYPOINT [ "/bin/zsh" ]