local language_servers = {
  'tsserver',
}

-- auto install language servers
require('user.lsp.mason').setup(language_servers)

-- configure completions and lsp servers
require('user.lsp.cmp').setup(language_servers)
