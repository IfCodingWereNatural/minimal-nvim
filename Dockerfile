# syntax=docker/dockerfile:1
FROM alpine:edge AS base
WORKDIR /root
SHELL ["/bin/sh", "-c"]

RUN apk add git neovim man-pages alpine-sdk zsh curl --update

# install deps needed by neovim
RUN apk add wget gzip neovim-doc ripgrep nodejs npm --update

# pre-download lazy.nvim
RUN git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable /root/.local/share/nvim/lazy/lazy.nvim

# copy project files
COPY .zshrc .zshrc
COPY projects projects
COPY nvim .config/nvim

# copy these hidden folders during development for faster
# loading of lazy.nvim, mason, and treesitter
COPY .cache /root/.cache
COPY .local /root/.local

FROM base
SHELL ["/bin/zsh", "-c"]
WORKDIR /root
RUN nvim --headless +"Lazy! sync" +qa
CMD ["/bin/zsh"]
