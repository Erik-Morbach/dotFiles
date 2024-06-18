return {
    'tanvirtin/vgit.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons'
    },
    config = function ()
        require('vgit').setup()
    end
}
