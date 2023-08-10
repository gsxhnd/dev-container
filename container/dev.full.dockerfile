FROM gsxhnd/dev-container:cli

USER devpod
WORKDIR /home/devpod
RUN brew install llvm@12 conan cmake
RUN brew install go go-task goreleaser
RUN brew install protobuf protoc-gen-go protoc-gen-go-grpc
RUN brew install python@3.10 pipenv
RUN brew install node node@18 yarn
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN brew install wasm-pack

ENTRYPOINT [ "/bin/zsh" ]