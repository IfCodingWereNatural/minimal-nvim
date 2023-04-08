function P(value)
  return vim.pretty_print(value)
end

function ReloadModule(...)
  return require('plenary.reload').reload_module(...)
end

function R(name)
  ReloadModule(name)
  return require(name)
end

function Dump(input)
  vim.cmd("put =execute('" .. input.args .. "')")
end
