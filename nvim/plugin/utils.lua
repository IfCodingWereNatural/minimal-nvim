P = function(value)
  print(vim.inspect(value))
end

PCall = function(name)
  local ok, mod = pcall(require, name)
  if ok then
    return mod
  end
  return false
end
