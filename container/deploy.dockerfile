FROM ubuntu:22.10

RUN apt update && apt install -y curl wget
ARG KIND_VERSION=v0.17.0
ARG HELM_VERSION=v3.11.2

RUN wget https://github.com/kubernetes-sigs/kind/releases/download/${KIND_VERSION}/kind-linux-amd64 -O /usr/local/bin/kind
RUN chmod +x /usr/local/bin/kind

RUN wget "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" -O /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

RUN wget https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz
RUN tar -zxvf helm-${HELM_VERSION}-linux-amd64.tar.gz
RUN mv linux-amd64/helm /usr/local/bin/helm
RUN chmod +x /usr/local/bin/helm
RUN rm -rvf helm-${HELM_VERSION}-linux-amd64.tar.gz

RUN kind --version
RUN kubectl version
RUN helm --version