local tree_ok, tree = pcall(require, 'nvim-tree')
if not tree_ok then
  return
end

tree.setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true,
  },
  view = {
    width = 30,
  },
  filters = {
    dotfiles = true,
  },
})
