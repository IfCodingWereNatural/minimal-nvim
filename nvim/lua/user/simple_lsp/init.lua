-- local mason = require('mason')
-- mason.setup()

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
keymap("n", "gD", "<cmd>Telescope lsp_declarations<CR>", opts)
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "gI", "<cmd>Telescope lsp_implementations<CR>", opts)
keymap("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)
keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
keymap("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
vim.cmd [[ command! Format execute 'lua vim.lsp.buf.format({ async = true })' ]]

local M = {}

function LaunchLsp()
  local root_dir = '/root/tsproj'
  vim.lsp.start({
    name = 'tsserver',
    cmd = { 'typescript-language-server', '--stdio' },
    root_dir = root_dir,
  })
end

return M
