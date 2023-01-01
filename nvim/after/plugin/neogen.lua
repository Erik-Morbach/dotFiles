require('neogen').setup({
    enabled = true,
    languages = {
        c = {
            template = {
                annotation_convention = "doxygen" -- for a full list of annotation_conventions, see supported-languages below,
                }
        },
        cpp = {
            template = {
                annotation_convention = "doxygen" -- for a full list of annotation_conventions, see supported-languages below,
                }
        },
    }
})

local vimp = require('vimp')

vimp.nnoremap('<leader>mf', '<cmd>Neogen func<CR>')
vimp.nnoremap('<leader>mc', '<cmd>Neogen class<CR>')
vimp.nnoremap('<leader>mt', '<cmd>Neogen type<CR>')
