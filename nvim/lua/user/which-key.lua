local wk_ok, wk = pcall(require, 'which-key')
if not wk_ok then
  return
end

local icons = require('user.icons')

vim.o.timeout = true
vim.o.timeoutlen = 300
local wk = require('which-key')
wk.setup({
  plugins = {
    marks = true,
    registers = true,
    spelling = {
      enabled = true,
      suggestions = 20,
    },
    presets = {
      operators = false,
      motions = false,
      text_objects = false,
      windows = true,
      nav = true,
      z = true,
      g = true,
    },
  },
  icons = {
    breadcrumb = "»",
    separator = "➜",
    group = icons.kind.Interface,
  },
  ignore_missing = true,
})

local opts = {
  mode = 'n',
  prefix = '<leader>',
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = false,
}

local mappings = {
  ["a"] = { ":Alpha<cr>", "Dashboard" },
  [";"] = { ":edit ~/.config/nvim/init.lua<cr>", "Edit Neovim Config" },
  ["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle current line" },
  ["w"] = { ":w!<cr>", "Save" },
  ["q"] = { ":confirm q<cr>", "Quit" },
  ["Q"] = { ":confirm qa<cr>", "Quit All" },
  ["e"] = { ":NvimTreeToggle<cr>", "File Explorer" },
  ["f"] = { ":Telescope find_files<cr>", "Find Files" },
  ["s"] = {
    name = "Search",
    g = { ":Telescope live_grep<cr>", "Live Grep" },
    h = { ":Telescope help_tags<cr>", "Help Tags" },
  },
  ["c"] = { ":bdelete!<cr>", "Close Buffer" },
}

local vopts = {
  mode = "v",
  prefix = "<leader>",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = true,
}

local vmappings = {
  ["/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment toggle linewise (visual)" },
}

wk.register(mappings, opts)
wk.register(vmappings, vopts)
