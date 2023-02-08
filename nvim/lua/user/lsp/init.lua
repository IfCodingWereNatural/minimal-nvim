local servers = {
  'tsserver',
}

local lsp_flags = {
  debounce_text_changes = 150,
}

-- auto install language servers
require('user.lsp.mason').setup(servers)

-- configure completions and lsp servers
require('user.lsp.cmp').setup(servers, lsp_flags)
