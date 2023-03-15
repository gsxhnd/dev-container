FROM gsxhnd/dev-container:base-ubuntu

USER dev
SHELL ["/bin/zsh", "-c"]
WORKDIR /workspace
RUN brew install python@3.10 pipenv node yarn pnpm
RUN brew install go protobuf protoc-gen-go protoc-gen-go-grpc
RUN brew install llvm conan
RUN brew install bottom procs htop
RUN brew fzf lazygit onefetch tree bat erdtree httpie jq
RUN brew install kubernetes-cli k9s
RUN brew link python@3.10
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh