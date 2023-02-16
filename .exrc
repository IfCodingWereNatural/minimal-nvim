let s:cpo_save=&cpo
set cpo&vim
noremap! <silent> <Plug>luasnip-expand-repeat <Cmd>lua require'luasnip'.expand_repeat()
noremap! <silent> <Plug>luasnip-delete-check <Cmd>lua require'luasnip'.unlink_current_if_deleted()
inoremap <silent> <Plug>luasnip-jump-prev <Cmd>lua require'luasnip'.jump(-1)
inoremap <silent> <Plug>luasnip-jump-next <Cmd>lua require'luasnip'.jump(1)
inoremap <silent> <Plug>luasnip-prev-choice <Cmd>lua require'luasnip'.change_choice(-1)
inoremap <silent> <Plug>luasnip-next-choice <Cmd>lua require'luasnip'.change_choice(1)
inoremap <silent> <Plug>luasnip-expand-snippet <Cmd>lua require'luasnip'.expand()
inoremap <silent> <Plug>luasnip-expand-or-jump <Cmd>lua require'luasnip'.expand_or_jump()
inoremap <silent> <C-Bslash> <Cmd>ToggleTerm
inoremap <silent> <C-O>r 🚀
inoremap <silent> <C-O>ok OK
inoremap <silent> <C-O>c Co
inoremap <silent> <C-O>s *2
inoremap <silent> <C-O>H cH
inoremap <silent> <C-O>j -v
inoremap <silent> <C-O>k -!
inoremap <silent> <C-O>h <-
inoremap <silent> <C-O>l ->
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
inoremap <silent> <M-Left> h
inoremap <silent> <M-Down> j
inoremap <silent> <M-Right> l
inoremap <silent> <M-k> :m .-2==gi
inoremap <silent> <M-Up> k
inoremap <silent> <M-j> :m .+1==gi
inoremap <C-W> u
inoremap <C-U> u
noremap <silent>  :TmuxNavigateLeft
tnoremap <silent>  h
noremap <silent> <NL> :TmuxNavigateDown
tnoremap <silent> <NL> j
noremap <silent>  :TmuxNavigateUp
tnoremap <silent>  k
tnoremap <silent>  l
noremap <silent>  :TmuxNavigateRight
nnoremap <silent>  :call QuickFixToggle()
nnoremap <silent>  :w
nnoremap <silent>  <Cmd>execute v:count . "ToggleTerm"
vnoremap <silent>  :TmuxNavigatePrevious
onoremap <silent>  :TmuxNavigatePrevious
nnoremap <silent>  PÞ <Nop>
nnoremap <nowait> <silent>  Pl "ayiwoP('a:', a);
xnoremap <silent>  Þ <Nop>
xnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "v", auto = true})
vmap <nowait> <silent>  / <Plug>(comment_toggle_linewise_visual)
nnoremap <silent>  TÞ <Nop>
nnoremap <silent>  tÞ <Nop>
nnoremap <silent>  bÞ <Nop>
nnoremap <silent>  SÞ <Nop>
nnoremap <silent>  sÞ <Nop>
nnoremap <silent>  pÞ <Nop>
nnoremap <silent>  uÞ <Nop>
nnoremap <silent>  dÞ <Nop>
nnoremap <silent>  GÞ <Nop>
nnoremap <silent>  LlÞ <Nop>
nnoremap <silent>  LÞ <Nop>
nnoremap <silent>  WÞ <Nop>
nnoremap <silent>  lÞ <Nop>
nnoremap <silent>  mÞ <Nop>
nnoremap <silent>  gÞ <Nop>
nnoremap <nowait> <silent>  Ws :lua require('telescope-tabs').list_tabs()
nnoremap <nowait> <silent>  Wv _
nnoremap <nowait> <silent>  Wh |
nnoremap <nowait> <silent>  W= =
nnoremap <nowait> <silent>  Lf <Cmd>lua require('lvim.core.telescope.custom-finders').find_lunarvim_files()
nnoremap <nowait> <silent>  Lln <Cmd>lua require('lvim.core.terminal').toggle_log_view(os.getenv('NVIM_LOG_FILE'))
nnoremap <nowait> <silent>  LlN <Cmd>edit $NVIM_LOG_FILE
nnoremap <nowait> <silent>  LlL <Cmd>lua vim.fn.execute('edit ' .. vim.lsp.get_log_path())
nnoremap <nowait> <silent>  Lld <Cmd>lua require('lvim.core.terminal').toggle_log_view(require('lvim.core.log').get_path())
nnoremap <nowait> <silent>  Lll <Cmd>lua require('lvim.core.terminal').toggle_log_view(vim.lsp.get_log_path())
nnoremap <nowait> <silent>  LlD <Cmd>lua vim.fn.execute('edit ' .. require('lvim.core.log').get_path())
nnoremap <nowait> <silent>  Lr <Cmd>LvimReload
nnoremap <nowait> <silent>  Li <Cmd>lua require('lvim.core.info').toggle_popup(vim.bo.filetype)
nnoremap <nowait> <silent>  Lc <Cmd>edit /Users/craig.blackburn/.config/lvim/config.lua
nnoremap <nowait> <silent>  Lu <Cmd>LvimUpdate
nnoremap <nowait> <silent>  LI <Cmd>lua require('lvim.core.telescope.custom-finders').view_lunarvim_changelog()
nnoremap <nowait> <silent>  Ld <Cmd>LvimDocs
nnoremap <nowait> <silent>  Lk <Cmd>Telescope keymaps
nnoremap <nowait> <silent>  Lg <Cmd>lua require('lvim.core.telescope.custom-finders').grep_lunarvim_files()
nnoremap <nowait> <silent>  tp :Telescope projects
nnoremap <nowait> <silent>  uf :lua print('------------ Not Implemented :( ----------------')
nnoremap <nowait> <silent>  uw :lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })
nmap <nowait> <silent>  / <Plug>(comment_toggle_linewise_current)
nnoremap <nowait> <silent>  h <Cmd>nohlsearch
nnoremap <nowait> <silent>  Ss <Cmd>lua require('persistence').load()
nnoremap <nowait> <silent>  SQ <Cmd>lua require('persistence').stop()
nnoremap <nowait> <silent>  Sl <Cmd>lua require('persistence').load({ last = true })
nnoremap <nowait> <silent>  sf <Cmd>Telescope find_files
nnoremap <nowait> <silent>  sp <Cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})
nnoremap <nowait> <silent>  sw <Cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })
nnoremap <nowait> <silent>  st <Cmd>Telescope live_grep
nnoremap <nowait> <silent>  sM <Cmd>Telescope man_pages
nnoremap <nowait> <silent>  sC <Cmd>Telescope commands
nnoremap <nowait> <silent>  sh <Cmd>Telescope help_tags
nnoremap <nowait> <silent>  sk <Cmd>Telescope keymaps
nnoremap <nowait> <silent>  sc <Cmd>Telescope colorscheme
nnoremap <nowait> <silent>  sH <Cmd>Telescope highlights
nnoremap <nowait> <silent>  sb <Cmd>Telescope git_branches
nnoremap <nowait> <silent>  sr <Cmd>Telescope oldfiles
nnoremap <nowait> <silent>  sR <Cmd>Telescope registers
nnoremap <nowait> <silent>  e <Cmd>NvimTreeToggle
nnoremap <nowait> <silent>  bf <Cmd>Telescope buffers previewer=false
nnoremap <nowait> <silent>  bn <Cmd>BufferLineCycleNext
nnoremap <nowait> <silent>  bL <Cmd>BufferLineSortByExtension
nnoremap <nowait> <silent>  bW <Cmd>noautocmd w
nnoremap <nowait> <silent>  bl <Cmd>BufferLineCloseRight
nnoremap <nowait> <silent>  bh <Cmd>BufferLineCloseLeft
nnoremap <nowait> <silent>  be <Cmd>BufferLinePickClose
nnoremap <nowait> <silent>  bb <Cmd>BufferLineCyclePrev
nnoremap <nowait> <silent>  bj <Cmd>BufferLinePick
nnoremap <nowait> <silent>  bD <Cmd>BufferLineSortByDirectory
nnoremap <nowait> <silent>  w <Cmd>w!
nnoremap <nowait> <silent>  dc <Cmd>lua require'dap'.continue()
nnoremap <nowait> <silent>  dC <Cmd>lua require'dap'.run_to_cursor()
nnoremap <nowait> <silent>  dp <Cmd>lua require'dap'.pause()
nnoremap <nowait> <silent>  dt <Cmd>lua require'dap'.toggle_breakpoint()
nnoremap <nowait> <silent>  du <Cmd>lua require'dap'.step_out()
nnoremap <nowait> <silent>  dU <Cmd>lua require'dapui'.toggle({reset = true})
nnoremap <nowait> <silent>  do <Cmd>lua require'dap'.step_over()
nnoremap <nowait> <silent>  dr <Cmd>lua require'dap'.repl.toggle()
nnoremap <nowait> <silent>  ds <Cmd>lua require'dap'.continue()
nnoremap <nowait> <silent>  db <Cmd>lua require'dap'.step_back()
nnoremap <nowait> <silent>  dd <Cmd>lua require'dap'.disconnect()
nnoremap <nowait> <silent>  di <Cmd>lua require'dap'.step_into()
nnoremap <nowait> <silent>  dg <Cmd>lua require'dap'.session()
nnoremap <nowait> <silent>  dq <Cmd>lua require'dap'.close()
nnoremap <nowait> <silent>  Gn :lua require('copilot.suggestion').next()
nnoremap <nowait> <silent>  Ga :lua require('copilot.suggestion').accept()
nnoremap <nowait> <silent>  GN :lua require('copilot.suggestion').prev()
nnoremap <nowait> <silent>  Gt :lua require('copilot.suggestion').toggle_auto_trigger()
nnoremap <nowait> <silent>  Gd :lua require('copilot.suggestion').dismiss()
nnoremap <nowait> <silent>  Ti :TSConfigInfo
nnoremap <nowait> <silent>  ps <Cmd>Lazy sync
nnoremap <nowait> <silent>  pl <Cmd>Lazy log
nnoremap <nowait> <silent>  pp <Cmd>Lazy profile
nnoremap <nowait> <silent>  pS <Cmd>Lazy clear
nnoremap <nowait> <silent>  pd <Cmd>Lazy debug
nnoremap <nowait> <silent>  pi <Cmd>Lazy install
nnoremap <nowait> <silent>  pu <Cmd>Lazy update
nnoremap <nowait> <silent>  pc <Cmd>Lazy clean
nnoremap <nowait> <silent>  c <Cmd>BufferKill
nnoremap <nowait> <silent>  x :xa
nnoremap <nowait> <silent>  le <Cmd>Telescope quickfix
nnoremap <nowait> <silent>  lR :LspRestart
nnoremap <nowait> <silent>  lF :LvimToggleFormatOnSave
nnoremap <nowait> <silent>  lI <Cmd>Mason
nnoremap <nowait> <silent>  ls <Cmd>Telescope lsp_document_symbols
nnoremap <nowait> <silent>  la <Cmd>lua vim.lsp.buf.code_action()
nnoremap <nowait> <silent>  lS <Cmd>Telescope lsp_dynamic_workspace_symbols
nnoremap <nowait> <silent>  ld <Cmd>Telescope diagnostics bufnr=0 theme=get_ivy
nnoremap <nowait> <silent>  li <Cmd>LspInfo
nnoremap <nowait> <silent>  lw <Cmd>Telescope diagnostics
nnoremap <nowait> <silent>  mf :lua require('harpoon.ui').nav_file(4)
nnoremap <nowait> <silent>  mn :lua require('harpoon.ui').nav_next()
nnoremap <nowait> <silent>  mw :lua require('harpoon.ui').nav_file(7)
nnoremap <nowait> <silent>  mt :lua require('harpoon.ui').toggle_quick_menu()
nnoremap <nowait> <silent>  me :lua require('harpoon.ui').nav_file(8)
nnoremap <nowait> <silent>  mm :lua require('harpoon.mark').add_file()
nnoremap <nowait> <silent>  ms :lua require('harpoon.ui').nav_file(2)
nnoremap <nowait> <silent>  ma :lua require('harpoon.ui').nav_file(1)
nnoremap <nowait> <silent>  mp :lua require('harpoon.ui').nav_prev()
nnoremap <nowait> <silent>  md :lua require('harpoon.ui').nav_file(3)
nnoremap <nowait> <silent>  mr :lua require('harpoon.ui').nav_file(9)
nnoremap <nowait> <silent>  mg :lua require('harpoon.ui').nav_file(5)
nnoremap <nowait> <silent>  mq :lua require('harpoon.ui').nav_file(6)
nnoremap <nowait> <silent>  a :Alpha
nnoremap <nowait> <silent>  ; <Cmd>Alpha
nnoremap <nowait> <silent>  gc <Cmd>Telescope git_commits
nnoremap <nowait> <silent>  gd <Cmd>Gitsigns diffthis HEAD
nnoremap <nowait> <silent>  gl <Cmd>lua require 'gitsigns'.blame_line()
nnoremap <nowait> <silent>  gb <Cmd>Telescope git_branches
nnoremap <nowait> <silent>  gu <Cmd>lua require 'gitsigns'.undo_stage_hunk()
nnoremap <nowait> <silent>  gC <Cmd>Telescope git_bcommits
nnoremap <nowait> <silent>  gj <Cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})
nnoremap <nowait> <silent>  gr <Cmd>lua require 'gitsigns'.reset_hunk()
nnoremap <nowait> <silent>  gs <Cmd>lua require 'gitsigns'.stage_hunk()
nnoremap <nowait> <silent>  gp <Cmd>lua require 'gitsigns'.preview_hunk()
nnoremap <nowait> <silent>  go <Cmd>Telescope git_status
nnoremap <nowait> <silent>  gk <Cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})
nnoremap <nowait> <silent>  gg <Cmd>lua require 'lvim.core.terminal'.lazygit_toggle()
nnoremap <nowait> <silent>  gR <Cmd>lua require 'gitsigns'.reset_buffer()
nnoremap <nowait> <silent>  q <Cmd>confirm q
nnoremap <silent>  Þ <Nop>
nnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "n", auto = true})
xnoremap # y?\V"
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap * y/\V"
vnoremap <silent> < <gv
vnoremap <silent> > >gv
nnoremap <silent> H :BufferLineCyclePrev
nnoremap <silent> L :BufferLineCycleNext
xmap S <Plug>VSurround
nnoremap Y y$
xnoremap <silent> [Þ <Nop>
xnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "v", auto = true})
nnoremap <silent> [Þ <Nop>
nnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "n", auto = true})
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap <silent> [q :cprev
xnoremap <silent> ]Þ <Nop>
xnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "v", auto = true})
nnoremap <silent> ]Þ <Nop>
nnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "n", auto = true})
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
nnoremap <silent> ]q :cnext
xnoremap <silent> aÞ <Nop>
xnoremap <silent> a <Cmd>lua require("which-key").show("a", {mode = "v", auto = true})
xmap a% <Plug>(MatchitVisualTextObject)
nnoremap <silent> cÞ <Nop>
nnoremap <silent> c <Cmd>lua require("which-key").show("c", {mode = "n", auto = true})
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nnoremap <silent> dÞ <Nop>
nnoremap <silent> d <Cmd>lua require("which-key").show("d", {mode = "n", auto = true})
nmap ds <Plug>Dsurround
nnoremap <silent> gÞ <Nop>
nnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "n", auto = true})
xnoremap gb <Plug>(comment_toggle_blockwise_visual)
xnoremap gc <Plug>(comment_toggle_linewise_visual)
nnoremap gb <Plug>(comment_toggle_blockwise)
nnoremap gc <Plug>(comment_toggle_linewise)
xnoremap <silent> gÞ <Nop>
xnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "v", auto = true})
xmap gx <Plug>NetrwBrowseXVis
nnoremap <silent> gx :call GXBrowse(expand('<cWORD>'))
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap <silent> gF :lua print(vim.fn.expand('%'))
xmap gS <Plug>VgSurround
nnoremap gn :tabe %
xnoremap <silent> iÞ <Nop>
xnoremap <silent> i <Cmd>lua require("which-key").show("i", {mode = "v", auto = true})
nnoremap <silent> yÞ <Nop>
nnoremap <silent> y <Cmd>lua require("which-key").show("y", {mode = "n", auto = true})
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> zÞ <Nop>
nnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})
nnoremap <silent> zs :lua require'telescope.builtin'.spell_suggest()
snoremap <silent> <Plug>luasnip-jump-prev <Cmd>lua require'luasnip'.jump(-1)
snoremap <silent> <Plug>luasnip-jump-next <Cmd>lua require'luasnip'.jump(1)
snoremap <silent> <Plug>luasnip-prev-choice <Cmd>lua require'luasnip'.change_choice(-1)
snoremap <silent> <Plug>luasnip-next-choice <Cmd>lua require'luasnip'.change_choice(1)
snoremap <silent> <Plug>luasnip-expand-snippet <Cmd>lua require'luasnip'.expand()
snoremap <silent> <Plug>luasnip-expand-or-jump <Cmd>lua require'luasnip'.expand_or_jump()
noremap <silent> <Plug>luasnip-expand-repeat <Cmd>lua require'luasnip'.expand_repeat()
noremap <silent> <Plug>luasnip-delete-check <Cmd>lua require'luasnip'.unlink_current_if_deleted()
xnoremap <Plug>(comment_toggle_blockwise_visual) <Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())
xnoremap <Plug>(comment_toggle_linewise_visual) <Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())
nnoremap <silent> <C-Bslash> <Cmd>execute v:count . "ToggleTerm"
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))
vnoremap <silent> <C-Bslash> :TmuxNavigatePrevious
onoremap <silent> <C-Bslash> :TmuxNavigatePrevious
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <C-S> :w
noremap <silent> <C-J> :TmuxNavigateDown
noremap <silent> <C-K> :TmuxNavigateUp
nnoremap <silent> <C-Q> :call QuickFixToggle()
nnoremap <silent> <M-Up> :resize -2
nnoremap <silent> <C-Up> :resize -2
nnoremap <silent> <M-Down> :resize +2
nnoremap <silent> <C-Down> :resize +2
nnoremap <silent> <M-Left> :vertical resize -2
nnoremap <silent> <C-Left> :vertical resize -2
nnoremap <silent> <M-Right> :vertical resize +2
nnoremap <silent> <C-Right> :vertical resize +2
noremap <silent> <C-H> :TmuxNavigateLeft
nnoremap <silent> <M-k> :m .-2==
nnoremap <silent> <M-j> :m .+1==
xnoremap <silent> <M-j> :m '>+1gv-gv
xnoremap <silent> <M-k> :m '<-2gv-gv
tnoremap <silent> <C-J> j
tnoremap <silent> <C-L> l
tnoremap <silent> <C-K> k
tnoremap <silent> <C-H> h
noremap <silent> <C-L> :TmuxNavigateRight
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> r 🚀
inoremap <silent> ok OK
inoremap <silent> c Co
inoremap <silent> s *2
inoremap <silent> H cH
inoremap <silent> j -v
inoremap <silent> k -!
inoremap <silent> h <-
inoremap <silent> l ->
imap  <Plug>Isurround
inoremap  u
inoremap  u
inoremap <silent>  <Cmd>ToggleTerm
let &cpo=s:cpo_save
unlet s:cpo_save
set clipboard=unnamedplus
set completeopt=menuone,noselect
set expandtab
set fillchars=eob:\ 
set formatoptions=jcrql
set guifont=monospace:h17
set helplang=en
set ignorecase
set laststatus=3
set noloadplugins
set mouse=a
set operatorfunc=v:lua.require'Comment.api'.locked'toggle.linewise.current'
set packpath=~/.local/opt/nvim-0.8/share/nvim/runtime
set pumheight=10
set noruler
set runtimepath=
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/nvim-treesitter
set runtimepath+=~/.config/lvim
set runtimepath+=~/.local/opt/nvim-0.8/share/nvim/runtime
set runtimepath+=~/.local/opt/nvim-0.8/share/nvim/runtime/pack/dist/opt/matchit
set runtimepath+=~/.local/opt/nvim-0.8/lib/nvim
set runtimepath+=~/.local/share/lunarvim/lvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/bigfile.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/molokai
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/nvim-dap
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/horizon.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/nvim-web-devicons
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/nvim-ts-autotag
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/nvim-trevJ.lua
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/harpoon
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/project.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/lualine.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/indent-blankline.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/vim-surround
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/sonokai
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/edge
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/bufferline.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/vim-tmux-navigator
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/lir.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/telescope-frecency.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/telescope.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/telescope-fzf-native.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/plenary.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/sqlite.lua
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/lsp-status.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/alpha-nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/nvim-dap-ui
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/popup.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/mason.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/rose-pine
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/gruvbox-material
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/ayu-vim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/lunar.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/hop.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/nvim-navic
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/vim-repeat
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/structlog.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/tokyonight.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/nvim-tree.lua
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/gruvbox
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/nlsp-settings.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/mason-lspconfig.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/nvim-lspconfig
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/nvim-ts-context-commentstring
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/vim-illuminate
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/toggleterm.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/which-key.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/persistence.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/gitsigns.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/trouble.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/nvim-spectre
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/vim-sanegx
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/Comment.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/todo-comments.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/schemastore.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/null-ls.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/nvim-cmp
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/cmp-nvim-lsp
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/cmp_luasnip
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/cmp-buffer
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/cmp-path
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/copilot.lua
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/copilot-cmp
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/nvim-autopairs
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/LuaSnip
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/friendly-snippets
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/neodev.nvim
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/cmp-path/after
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/cmp-buffer/after
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/cmp_luasnip/after
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/cmp-nvim-lsp/after
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/bigfile.nvim/after
set runtimepath+=~/.local/share/lunarvim/site/after
set runtimepath+=~/.config/lvim/after
set runtimepath+=~/.local/share/lunarvim/site/pack/lazy/opt/lazy.nvim
set runtimepath+=~/.local/share/lunarvim/lazy/readme
set scrolloff=8
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions
set shadafile=~/.cache/lvim/lvim.shada
set shell=/bin/zsh
set shiftwidth=2
set shortmess=ioOcTIlFtxnf
set noshowcmd
set noshowmode
set showtabline=2
set sidescrolloff=8
set smartcase
set spelllang=en,cjk
set splitbelow
set splitright
set statusline=%#Normal#
set noswapfile
set tabline=%!v:lua.nvim_bufferline()
set tabstop=2
set termguicolors
set title
set undodir=~/.cache/lvim/undo
set undofile
set updatetime=100
set whichwrap=<,>,[,],b,h,l,s
set window=53
set nowritebackup
" vim: set ft=vim :
