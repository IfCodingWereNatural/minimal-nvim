#!/usr/bin/env bash
docker rm nvim 2&> /dev/null
docker run -it \
  --name nvim \
  --mount type=bind,source="$(pwd)/nvim",target=/root/.config/nvim \
  minimal-nvim
