#!/usr/bin/env bash
docker rm nvim 2&> /dev/null
docker run -it --name nvim nvim
