local buf_ok, buf = pcall(require, 'bufferline')
if not buf_ok then
  return
end

buf.setup()
