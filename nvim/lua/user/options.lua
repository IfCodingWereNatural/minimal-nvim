local opts = {
  clipboard = "unnamedplus",
  cmdheight = 1,
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showmode = false,
  showtabline = 0,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 100,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = true,
  number = true,
  laststatus = 3,
  showcmd = false,
  ruler = false,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8,
  shell = "/bin/zsh",
  hidden = true,
}

local global_opts = {
  mapleader = " ",
  maplocalleader = " ",
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

for k, v in pairs(global_opts) do
  vim.g[k] = v
end
