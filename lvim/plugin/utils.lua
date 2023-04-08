function P(value)
  vim.pretty_print(value)
end

vim.api.nvim_create_user_command('Redir', function(input)
  vim.cmd("redir @a")
  vim.cmd(input.args)
  vim.cmd("redir END")
end, { nargs = 1 })

vim.api.nvim_create_user_command('Dump', function(input)
  vim.cmd("put =execute('" .. input.args .. "')")
end, { nargs = 1 })

function GetVisualSelection()
  local s_start = vim.fn.getpos("'<")
  local s_end = vim.fn.getpos("'>")
  local n_lines = math.abs(s_end[2] - s_start[2]) + 1
  local lines = vim.api.nvim_buf_get_lines(0, s_start[2] - 1, s_end[2], false)
  lines[1] = string.sub(lines[1], s_start[3], -1)
  if n_lines == 1 then
    lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3] - s_start[3] + 1)
  else
    lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3])
  end
  return table.concat(lines, '\n')
end

-- local nredir = require('user.nredir')
-- function Redir(cmd)
--   return nredir.nredir(cmd, nil)
-- end

-- vim.api.nvim_create_user_command('Redir', function(input)
--   Redir(input.args)
--   -- vim.cmd("redir @a")
--   -- vim.cmd(input.args)
--   -- vim.cmd("redir END")
-- end, { nargs = 1 })

-- vim.api.nvim_create_user_command('Dump', Dump, { nargs = 1 })

-- local on_list_definition = function(input)
--   P(input)
-- end

-- function Foo()
--   return vim.lsp.buf.definition({ reuse_win = true, on_list = on_list_definition })
-- end

-- vim.keymap.set('n', 'gf', function() Foo() end, { silent = true })
