local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.api.nvim_set_keymap

-- NORMAL mode mappings
local normal_maps = {
  { '<leader>q', ':q<cr>' },
  { '<leader>x', ':xa<cr>' },
  { '<leader>w', ':w<cr>' },
  { '<C-h>', '<C-w>h' },
  { '<C-j>', '<C-w>j' },
  { '<C-k>', '<C-w>k' },
  { '<C-l>', '<C-w>l' },
  { '<leader>h', ':nohl<cr>' },
  { '<S-l>', ':bnext<CR>' },
  { '<S-h>', ':bprevious<CR>' },
}

-- VISUAL mode mappings
local visual_maps = {
  { '<', '<gv' },
  { '>', '>gv' },
}

for _, map in ipairs(normal_maps) do
  keymap('n', map[1], map[2], opts)
end

for _, map in ipairs(visual_maps) do
  keymap('v', map[1], map[2], opts)
end
