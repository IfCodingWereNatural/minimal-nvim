# syntax=docker/dockerfile:1
FROM alpine:edge AS base
WORKDIR /root
SHELL ["/bin/sh", "-c"]
RUN apk add git neovim neovim-doc man-pages ripgrep alpine-sdk bash nodejs npm --update
RUN git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable /root/.local/share/nvim/lazy/lazy.nvim
COPY .bashrc /root/.bashrc
COPY projects /root/projects
COPY nvim /root/.config/nvim

# copy these hidden folders during development for faster
# loading of lazy.nvim, mason, and treesitter
COPY .cache /root/.cache
COPY .local /root/.local

FROM base
WORKDIR /root
RUN nvim --headless +"Lazy! sync" +"sleep 5" +qa
CMD ["/bin/bash"]
