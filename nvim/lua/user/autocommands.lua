-- auto sync plugins on save
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = vim.fn.expand("~") .. "/.config/nvim/lua/user/plugins.lua",
  callback = ":Lazy sync"
})
