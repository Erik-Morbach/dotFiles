require("harpoon").setup({
    save_on_toogle = false,
    save_on_change = true,
    enter_on_sendcmd = false,
    tmux_autoclose_windows = false,
    excluded_filetypes = {"harppon"},
    mark_branch = false,

})
local vimp = require('vimp')

vimp.nnoremap('<leader>hm', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>')
vimp.nnoremap('<leader>ha', '<cmd>lua require("harpoon.mark").add_file()<CR>')
vimp.nnoremap('<leader>h1', '<cmd>lua require("harpoon.ui").nav_file(1)<CR>')
vimp.nnoremap('<leader>h2', '<cmd>lua require("harpoon.ui").nav_file(2)<CR>')
vimp.nnoremap('<leader>h3', '<cmd>lua require("harpoon.ui").nav_file(3)<CR>')
vimp.nnoremap('<leader>h4', '<cmd>lua require("harpoon.ui").nav_file(4)<CR>')


vimp.nnoremap('<leader>hn', '<cmd>lua require("harpoon.ui").nav_next()<CR>')
vimp.nnoremap('<leader>hp', '<cmd>lua require("harpoon.ui").nav_prev()<CR>')
vimp.nnoremap('<leader>ht', '<cmd>lua require("harpoon.term").gotoTerminal(1)<CR>')


