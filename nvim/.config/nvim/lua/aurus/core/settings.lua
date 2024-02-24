local set = vim.opt

set.guicursor = ""
set.updatetime = 50

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4
set.smartindent = true

set.hlsearch = false
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 8
set.fileencoding = "utf-8"
set.termguicolors = true
set.signcolumn = "yes"
set.isfname:append("@-@")

set.relativenumber = true
set.cursorline = true

set.hidden = true
set.number = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netwr_winsize = 25
