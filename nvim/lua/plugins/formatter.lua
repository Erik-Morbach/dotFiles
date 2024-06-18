return {
	'mhartington/formatter.nvim',
	lazy = true,
	priority = 1000,
	config = function()
		local util = require('formatter.util')
		require('formatter').setup({
		})
	end,
}
