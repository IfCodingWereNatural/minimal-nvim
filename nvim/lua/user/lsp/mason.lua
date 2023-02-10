local mason_ok, mason = pcall(require, "mason")
local mason_lsp_ok, mason_lspconfig = pcall(require, "mason-lspconfig")

local M = {}

M.setup = function(servers)
  -- skip mason setup if in headless mode
  if next(vim.api.nvim_list_uis()) == nil then
    return
  end

  if mason_ok then
    mason.setup({
      log_level = vim.log.levels.WARN,
    })
  end

  if mason_lsp_ok then
    mason_lspconfig.setup {
      ensure_installed = servers,
      automatic_installation = true,
    }
  end
end

return M
