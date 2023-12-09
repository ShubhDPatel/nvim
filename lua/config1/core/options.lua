vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.termguicolors = true
vim.o.wrap = false
vim.opt.smartindent = true
vim.opt.signcolumn = "yes"

-- Set listchars globally
vim.opt.list = true
vim.opt.listchars = { space = '·', tab = '> ', extends = '|' }
vim.opt.clipboard = 'unnamedplus'

-- makes it so whenever : is typed, it doesn't reindent
vim.cmd [[autocmd FileType cpp setlocal indentkeys-=:]]
vim.cmd [[autocmd FileType c setlocal indentkeys-=:]]
