local path = require('plenary.path')

local M = {}

M.cwd = nil

local function setopts(opts)
  for lhs, rhs in pairs(opts) do
    if type(rhs) == 'table' then
      setopts(rhs)
      goto continue
    end

    if vim.fn.exists('&' .. lhs) == 1 then
      vim.opt[lhs] = rhs
    else
      vim.notify('neofig: unknown option ' .. '"' .. lhs .. '"', vim.log.levels.WARN)
    end

    ::continue::
  end
end

vim.api.nvim_create_augroup("neofig", {
  clear = true,
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    if M.cwd ~= vim.fn.getcwd() then
      M.cwd = vim.fn.getcwd()
      local stop = path:new(M.cwd):parent():absolute()
      local result = vim.fs.find(".settings", {
        type = "directory",
        stop = stop,
      })

      for _, v in ipairs(result) do
        local config = path:new(v):joinpath("neofig.json")
        if config:exists() then
          local opts = vim.fn.json_decode(vim.fn.readfile(config.filename))
          if opts ~= nil then
            setopts(opts)
          end
          return
        end
      end
    end
  end,
  group = "neofig",
})

-- TODO: cache current opts so they can be reapplied after leaving directory
-- that doesn't having neofig.json
-- print(vim.inspect(opts))
M.setup = function(opts)
  opts = opts or { rnu = true }
  vim.opt['rnu'] = opts[1]
  setopts(opts)
end

M.setup()

return M
