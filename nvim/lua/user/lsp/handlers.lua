local telescope = require('telescope.builtin')

local M = {}

M.on_attach = function(_, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local keymap = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, bufopts)
  end

  keymap('n', 'gl', vim.diagnostic.open_float)
  keymap('n', 'gs', vim.lsp.buf.signature_help)
  keymap('n', 'gD', vim.lsp.buf.declaration)
  keymap('n', 'gd', telescope.lsp_definitions)
  keymap('n', 'K', vim.lsp.buf.hover)
  keymap('n', 'gi', telescope.lsp_implementations)
  keymap('n', 'gD', telescope.lsp_type_definitions)
  keymap('n', 'gr', telescope.lsp_references)
  keymap('n', '<space>lr', vim.lsp.buf.rename)
  keymap('n', '<space>la', vim.lsp.buf.code_action)
  keymap('n', '<space>lf', function() vim.lsp.buf.format { async = true } end)
  keymap('n', '<space>wa', vim.lsp.buf.add_workspace_folder)
  keymap('n', '<space>wr', vim.lsp.buf.remove_workspace_folder)
end

return M
