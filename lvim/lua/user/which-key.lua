local kind = require('user.kind')

local wk = lvim.builtin.which_key

wk.mappings["a"] = { ":Alpha<cr>", kind.icons.screen .. " Dashboard" }

wk.mappings["S"] = {
  name = " persistence.nvim",
  s = { "<cmd>lua require('persistence').load()<cr>", kind.icons.clock .. " Reload last session for dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", kind.icons.clock .. " Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", kind.icons.exit .. " Quit without saving session" },
}

wk.mappings["l"]["t"] = { ":LvimToggleFormatOnSave<cr>", kind.symbols_outline.File .. " Toggle format-on-save" }
wk.mappings["l"]["R"] = { ":LspRestart<cr>", kind.icons.exit .. " Restart" }

wk.mappings["s"]["w"] = {
  "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<cr>",
  ' ' .. kind.cmp_kind.EnumMember .. " Search Word Under Cursor"
}

wk.mappings["m"] = {
  name = ' ' .. kind.todo_comments.PERF .. " Harpoon",
  m = { ":lua require('harpoon.mark').add_file()<cr>", "Mark file" },
  t = { ":lua require('harpoon.ui').toggle_quick_menu()<cr>", "Toggle UI" },
  a = { ":lua require('harpoon.ui').nav_file(1)<cr>", "Goto mark 1" },
  s = { ":lua require('harpoon.ui').nav_file(2)<cr>", "Goto mark 2" },
  d = { ":lua require('harpoon.ui').nav_file(3)<cr>", "Goto mark 3" },
  f = { ":lua require('harpoon.ui').nav_file(4)<cr>", "Goto mark 4" },
  g = { ":lua require('harpoon.ui').nav_file(5)<cr>", "Goto mark 5" },
  q = { ":lua require('harpoon.ui').nav_file(6)<cr>", "Goto mark 6" },
  w = { ":lua require('harpoon.ui').nav_file(7)<cr>", "Goto mark 7" },
  e = { ":lua require('harpoon.ui').nav_file(8)<cr>", "Goto mark 8" },
  r = { ":lua require('harpoon.ui').nav_file(9)<cr>", "Goto mark 9" },
  n = { ":lua require('harpoon.ui').nav_next()<cr>", "Next file" },
  p = { ":lua require('harpoon.ui').nav_prev()<cr>", "Prev file" },
}

wk.mappings["W"] = {
  name = ' ' .. kind.icons.screen .. " Window Ctrl",
  h = { '<C-w>|', 'Maximize window horizontally (|)' },
  v = { '<C-w>_', 'Maximize window vertically (_)' },
  ['='] = { '<C-w>=', 'Resize windows equally' },
  s = { ":lua require('telescope-tabs').list_tabs()<cr>", 'Search Tabs' },
}

wk.mappings["G"] = {
  name = ' ' .. kind.icons.hint .. " Github Copilot",
  a = { ":lua require('copilot.suggestion').accept()<cr>", "Accept" },
  n = { ":lua require('copilot.suggestion').next()<cr>", "Next" },
  N = { ":lua require('copilot.suggestion').prev()<cr>", "Prev" },
  d = { ":lua require('copilot.suggestion').dismiss()<cr>", "Dismiss" },
  t = { ":lua require('copilot.suggestion').toggle_auto_trigger()<cr>", "Toggle Auto Trigger" },
}

wk.mappings['x'] = { ":xa<cr>", "Save All and Quit", }

wk.mappings["t"] = {
  name = ' Telescope',
  p = { ':Telescope projects<cr>', 'Projects' }, -- requires telescope-project.nvim plugin
  r = { ':Telescope resume<cr>', 'Resume' },
}
