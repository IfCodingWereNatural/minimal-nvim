local ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if not ok then
  return
end

treesitter.setup({
  ensure_installed = { "lua", "typescript", "vim", "help" },
  auto_install = true,
  log_level = vim.log.levels.WARN,
})
