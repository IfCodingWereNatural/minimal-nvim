local M = {}

local cmp_ok, cmp = pcall(require, 'cmp')
local cmp_lsp_ok, cmp_lsp = pcall(require, 'cmp_nvim_lsp')
local luasnip_ok, luasnip = pcall(require, 'luasnip')
local lspconfig_ok, lspconfig = pcall(require, 'lspconfig')

vim.opt.completeopt = 'menu,menuone,noselect'

M._setup_cmdline = function()
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })
end

M._setup_cmp = function()
  local opts = {
    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-u>'] = cmp.mapping.scroll_docs(-4),
      ['<C-d>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<CR>'] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      },
      ['<Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        else
          fallback()
        end
      end, { 'i', 's' }),
      ['<S-Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { 'i', 's' }),
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
    }, {
      { name = 'buffer' },
    }),
  }

  cmp.setup(opts)
end

M.setup = function(servers, flags)
  if not (cmp_ok and luasnip_ok) then
    return
  end

  M._setup_cmp()
  M._setup_cmdline()

  if not (cmp_lsp_ok and lspconfig_ok) then
    return
  end

  local handlers = require('user.lsp.handlers')
  local capabilities = cmp_lsp.default_capabilities()
  for _, server in ipairs(servers) do
    lspconfig[server].setup({
      on_attach = handlers.on_attach,
      flags = flags,
      capabilities = capabilities,
    })
  end
end

return M
