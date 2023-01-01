vim.cmd([[let g:neoformat_c_clangformat = { 'exe': 'clang-format','args': ['--style=file'], 'stdin': 1} ]])
vim.cmd([[let g:neoformat_cpp_clangformat = { 'exe': 'clang-format','args': ['--style=file'], 'stdin': 1} ]])
vim.cmd([[let g:neoformat_enabled_cpp = ['clangformat'] ]])
vim.cmd([[let g:neoformat_enabled_c = ['clangformat'] ]])
