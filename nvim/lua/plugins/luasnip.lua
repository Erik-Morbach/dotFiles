return {
	'L3MON4D3/LuaSnip',
	lazy = false,
	priority = 1000,
	config = function()
		require('luasnip').setup()
	end,
}
