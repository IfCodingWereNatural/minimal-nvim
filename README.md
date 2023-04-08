# Minimal NeoVim Config and Docker

This repository contains a fairly minimal NeoVim configuration with language
server protocol (LSP) support, snippets, and autocompletions, plus a Dockerfile
to run the configuration in a container.

## Getting Started

To get started, clone the repository to your local machine:

```
git clone https://github.com/IfCodingWereNatural/minimal-nvim.git
```

### Prerequisites

You'll need to have Docker installed on your local machine to build and run the container.

### Building the Container

Use `./build.sh` to create the Docker image or just run the following command:

```bash
~$ docker build -t minimal-nvim .
```

This script will build the container and tag it with the name `minimal-nvim`.

### Running the Container

There is a helper script to start up the container.

```bash
~$ ./run.sh
```

This script will run the container and mount the `nvim/` directory as a volume,
so any changes you make to the files in `/root/.config/nvim` while in the
container, will also change the local files.

## NeoVim Configuration

The configuration includes the following plugins (and perhaps more, I dunno, I had chatgpt generate this readme):

- `lazy.nvim` plugin manager
- `plenary.nvim` for utility functions
- `mason-lspconfig.nvim` and `mason.nvim` for project management and LSP support
- `nvim-lspconfig` for LSP support
- `nvim-cmp` for autocompletion
- `LuaSnip` for snippets
- `lspkind.nvim` for icons in autocompletion
- `telescope.nvim` for fuzzy searching
- `nvim-treesitter/nvim-treesitter` for syntax highlighting and indentation
- `project.nvim` for project management
- `alpha-nvim` for a startup screen
- `nvim-tree.lua` for a file explorer
- `bufferline.nvim` for a bufferline
- `which-key.nvim` for key bindings
- `tokyonight.nvim` for a colorscheme
- `vim-surround` for working with surroundings
- `Comment.nvim` for commenting code
- `nvim-autopairs` for automatic pairing of brackets, quotes, etc.


