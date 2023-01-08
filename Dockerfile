FROM debian:bookworm-slim

ENV LC_ALL C.UTF-8

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
      build-essential ca-certificates git cargo nodejs npm \
      wget ninja-build gettext libtool libtool-bin autoconf \
      automake cmake g++ pkg-config unzip curl doxygen && \
    rm -rf /var/lib/apt/lists/*

ENV PATH="${PATH}:/root/.cargo/bin"
RUN cargo install tree-sitter-cli

RUN git clone https://github.com/neovim/neovim && \
     cd neovim && git checkout stable && \
     make CMAKE_BUILD_TYPE=RelWithDebInfo && make install && \
     cd .. && rm -rf neovim
