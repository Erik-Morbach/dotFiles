return {
	'nvim-telescope/telescope-ui-select.nvim',
	dependencies = {'nvim-telescope/telescope.nvim'},
	lazy = false,
	priority = 1000,
	config = function()
		require('telescope').load_extension('ui-select')
	end,
}
