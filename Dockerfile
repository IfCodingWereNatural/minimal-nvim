# syntax=docker/dockerfile:1
FROM alpine:edge AS base
WORKDIR /root
SHELL ["/bin/sh", "-c"]
RUN apk add git neovim neovim-doc man-pages ripgrep alpine-sdk bash nodejs npm --update
RUN git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable /root/.local/share/nvim/lazy/lazy.nvim
COPY bashrc /root/.bashrc

FROM base
WORKDIR /root
COPY tsproj /root/tsproj
COPY nvim /root/.config/nvim
RUN nvim --headless "+Lazy! sync" +qa
CMD ["/bin/bash"]
