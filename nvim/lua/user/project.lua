local ok, project = pcall(require, 'project_nvim')
if not ok then
  return
end

project.setup({
  detection_methods = { "pattern", "lsp" },
  patterns = {
    ".git",
    "package-lock.json",
    "=nvim",
  },
  exclude_dirs = { ".git", "node_modules", "dist", "build" },
})

require('telescope').load_extension('projects')
