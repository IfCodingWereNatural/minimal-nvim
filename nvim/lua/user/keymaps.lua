local M = {}

M.show_documentation = function()
  local filetype = vim.bo.filetype
  if vim.tbl_contains({ "vim", "help" }, filetype) then
    vim.cmd("h " .. vim.fn.expand "<cword>")
  elseif vim.tbl_contains({ "man" }, filetype) then
    vim.cmd("Man " .. vim.fn.expand "<cword>")
  elseif vim.fn.expand "%:t" == "Cargo.toml" then
    require("crates").show_popup()
  else
    vim.lsp.buf.hover()
  end
end

M.setup = function()
  local opts = { noremap = true, silent = true }
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
    { '<S-k>', ':lua require("user.keymaps").show_documentation()<CR>' },
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
end

M.setup()

return M
