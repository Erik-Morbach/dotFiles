return {
	'rcarriga/nvim-dap-ui',
	lazy = false,
	priority = 1000,
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio"
	},
	config = function()
		require('dapui').setup()
	end,
}
