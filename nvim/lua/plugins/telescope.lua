return {
	'nvim-telescope/telescope.nvim',
	lazy = false,
	priority = 1000,
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		require('telescope').setup({
			extensions = {
				['ui-select'] = {
					require('telescope.themes').get_dropdown()
				}
			}
		})
	end,
}
