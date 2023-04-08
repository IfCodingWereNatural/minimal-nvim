# syntax=docker/dockerfile:1
FROM alpine:edge AS base
WORKDIR /root
SHELL ["/bin/sh", "-c"]

RUN apk add git neovim man-pages alpine-sdk zsh curl --update

# install deps needed by neovim
RUN apk add wget gzip neovim-doc ripgrep nodejs npm --update

# pre-download lazy.nvim
RUN git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable /root/.local/share/nvim/lazy/lazy.nvim

# install lunarvim dependencies
RUN apk add yarn python3 cargo bash --update

# install tree-sitter-cli with cargo because `npm i tree-sitter-cli` fails on
# apple silicon. Install other rust dependencies while at it.
RUN cargo install tree-sitter-cli fd-find ripgrep

# install lunarvim
RUN su -c "bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh) --no-install-dependencies"

COPY .zshrc .zshrc
COPY projects projects
COPY nvim .config/nvim

# copy these hidden folders during development for faster
# loading of lazy.nvim, mason, and treesitter
COPY .cache /root/.cache
COPY .local /root/.local

FROM base
SHELL ["/bin/zsh", "-c"]
WORKDIR /root/projects/pets
COPY lvim /root/.config/lvim
CMD ["/bin/zsh"]
