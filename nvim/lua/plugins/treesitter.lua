return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	priority = 1000,
	config = function()
		require('nvim-treesitter').setup({
			ensure_installed = {},
			sync_install = true,
			highlight = { enable = true },
			ident = { enable = true },
		})
	end,
}
