local cmp_ok, cmp = pcall(require, 'cmp')
local cmp_lsp_ok, cmp_lsp = pcall(require, 'cmp_nvim_lsp')
local luasnip_ok, luasnip = pcall(require, 'luasnip')
local lspconfig_ok, lspconfig = pcall(require, 'lspconfig')
local devicons = require('nvim-web-devicons')

local status_ok = cmp_ok and luasnip_ok and cmp_lsp_ok and lspconfig_ok
if not status_ok then
  return
end

vim.opt.completeopt = 'menu,menuone,noselect'

local M = {}

M.setup = function(servers)
  cmp.setup({
    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
      end,
    },
    formatting = {
      fields = { "abbr", "kind" },
      format = function(entry, vim_item)
        if vim.tbl_contains({ 'path' }, entry.source.name) then
          local icon, hl_group = devicons.get_icon(entry:get_completion_item().label)
          if icon then
            vim_item.kind = icon
            vim_item.kind_hl_group = hl_group
            return vim_item
          end
        end
        return require('lspkind').cmp_format({ with_text = false })(entry, vim_item)
      end
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
  })

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

  local handlers = require('user.lsp.handlers')
  local capabilities = cmp_lsp.default_capabilities()
  for _, server in ipairs(servers) do
    lspconfig[server].setup({
      on_attach = handlers.on_attach,
      capabilities = capabilities,
    })
  end
end

return M
