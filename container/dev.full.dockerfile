FROM gsxhnd/dev-container:cli

USER build
ENV PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"
WORKDIR /workspace
RUN brew install python@3.10 pipenv node yarn pnpm
RUN brew install go protobuf protoc-gen-go protoc-gen-go-grpc
RUN brew install llvm conan
RUN brew link python@3.10
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

ENTRYPOINT [ "/bin/zsh" ]