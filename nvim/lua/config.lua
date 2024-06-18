vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.hlsearch = false
vim.opt.incsearch = false
vim.opt.wrap = false
vim.opt.title = true
vim.opt.showmatch = true
vim.opt.ignorecase = true

vim.o.termguicolors = true
vim.opt.updatetime = 300

vim.wo.colorcolumn = '80'
vim.wo.signcolumn = 'yes'

vim.opt.ttyfast = true
vim.opt.swapfile = false
vim.opt.list = true
vim.opt.listchars = { space = '~', tab = '>-' }

vim.api.nvim_set_option('clipboard', 'unnamed')
