local set_options = vim.opt
local set_defaults = vim.g

set_options.guicursor = ""
set_options.updatetime = 50
set_options.expandtab = true
set_options.smarttab = true
set_options.shiftwidth = 4
set_options.tabstop = 4
set_options.softtabstop = 4
set_options.smartindent = true
set_options.hlsearch = false
set_options.incsearch = true
set_options.ignorecase = true
set_options.smartcase = true
set_options.splitbelow = true
set_options.splitright = true
set_options.wrap = false
set_options.scrolloff = 8
set_options.fileencoding = "utf-8"
set_options.termguicolors = true
set_options.signcolumn = "yes"
set_options.isfname:append("@-@")
set_options.relativenumber = true
set_options.cursorline = true
set_options.hidden = true
set_options.number = true
set_options.swapfile = false
set_options.backup = false
set_options.undodir = os.getenv("HOME") .. "/.vim/undodir"
set_options.undofile = true

set_defaults.netrw_browse_split = 0
set_defaults.netrw_banner = 0
set_defaults.netwr_winsize = 25
