vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.smarttab = false
vim.opt.wrap = false
vim.opt.title = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.wo.colorcolumn = '80'
-- vim.opt.syntax = true
vim.opt.ttyfast = true
vim.opt.swapfile = false
vim.opt.list = true
vim.opt.listchars = { space = '~', tab = '>-' }
  
vim.g.mapleader = " "



-- vim.cmd([[au FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 noet]])
--

vim.api.nvim_set_option("clipboard","unnamed")

local vimp = require('vimp')

vimp.nnoremap('<leader>ff', '<cmd>Telescope find_files<CR>')
vimp.nnoremap('<leader>fg', '<cmd>Telescope live_grep<CR>')
vimp.nnoremap('<leader>st', '<cmd>NvimTreeToggle<CR>')
vimp.nnoremap('<leader>tt', '<cmd>ToggleTerm size=10 direction=horizontal<CR>')
vimp.nnoremap('<leader>dgs', '<cmd>lua vim.diagnostic.open_float()<CR>')

vimp.nnoremap('<leader>db', '<cmd>DapToggleBreakpoint<CR>')
vimp.nnoremap('<leader>dr', '<cmd>lua require("dapui").toggle()<CR>')
vimp.nnoremap('<leader>dt', '<cmd>DapTerminate<CR>')
vimp.nnoremap('<leader>c', '<cmd>DapContinue<CR>')
vimp.nnoremap('<leader>i', '<cmd>DapStepInto<CR>')
vimp.nnoremap('<leader>o', '<cmd>DapStepOver<CR>')
vimp.tnoremap('<Esc>', '<C-\\><C-n>')

local augroup = vim.api.nvim_create_augroup('packer_user_config',{})

vim.api.nvim_create_autocmd('BufWritePost', {
	pattern = 'plugins.lua',
	group = augroup,
	command = 'source <afile> | PackerCompile'
})

