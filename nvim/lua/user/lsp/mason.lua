local mason_ok, mason = pcall(require, "mason")
local mason_lsp_ok, mason_lspconfig = pcall(require, "mason-lspconfig")

local M = {}

M.setup = function(servers)
  if mason_ok then
    mason.setup()
  end

  if mason_lsp_ok then
    mason_lspconfig.setup {
      ensure_installed = servers,
      automatic_installation = true,
    }
  end
end

return M
