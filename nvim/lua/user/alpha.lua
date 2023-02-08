local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"
local icons = require "user.icons"

local button = function(key, desc, keybind, opts)
  local btn = dashboard.button(key, desc, keybind, opts)
  btn.opts.hl_shortcut = "Macro"
  return btn
end

dashboard.section.header.val = {
  [[                               __                ]],
  [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
  [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
  [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
  [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
  [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}

dashboard.section.buttons.val = {
  button("f", icons.documents.Files .. " Find Files", ":Telescope find_files<cr>"),
  button("r", icons.ui.History .. " Recent Files", ":Telescope oldfiles<cr>"),
  button("g", icons.ui.List .. " Live Grep", ":Telescope live_grep<cr>"),
  button("c", icons.ui.Gear .. " Config", ":edit ~/.config/nvim/init.lua<cr>"),
  button("p", icons.ui.Project .. " Projects", ":lua require('telescope').extensions.projects.projects({})<cr>"),
  button("t", icons.ui.Project .. " Test Project", ":edit ~/projects/pets/src/index.ts<cr>"),
  button("q", icons.ui.SignOut .. " Quit", ":qa<cr>"),
}

dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)
