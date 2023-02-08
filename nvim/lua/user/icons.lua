vim.g.use_nerd_icons = false

local M = {}

M.kind = {
  Text = "",
  Function = "",
  Constructor = "",
  Method = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

M.type = {
  Array = "",
  Number = "",
  String = "",
  Boolean = "蘒",
  Object = "",
}

M.documents = {
  File = "",
  Files = "",
  Folder = "",
  OpenFolder = "",
}

M.git = {
  Add = "",
  Mod = "",
  Remove = "",
  Ignore = "",
  Rename = "",
  Diff = "",
  Repo = "",
  Octoface = "",
}

M.ui = {
  ArrowClosed = "",
  ArrowOpen = "",
  Lock = "",
  Circle = "",
  BigCircle = "",
  BigUnfilledCircle = "",
  Close = "",
  NewFile = "",
  Search = "",
  Lightbulb = "",
  Project = "",
  Dashboard = "",
  History = "",
  Comment = "",
  Bug = "",
  Code = "",
  Telescope = "",
  Gear = "",
  Package = "",
  List = "",
  SignIn = "",
  SignOut = "",
  Check = "",
  Fire = "",
  Note = "",
  BookMark = "",
  Pencil = "",
  ChevronRight = "",
  Table = "",
  Calendar = "",
  CloudDownload = "",
}

M.diagnostics = {
  Error = "",
  Warning = "",
  Information = "",
  Question = "",
  Hint = "",
}

M.misc = {
  Robot = "ﮧ",
  Squirrel = "",
  Tag = "",
  Watch = "",
  Smiley = "ﲃ",
  Package = "",
  CircuitBoard = "",
}
--   --   פּ ﯟ   蘒練 some other good icons

return M
