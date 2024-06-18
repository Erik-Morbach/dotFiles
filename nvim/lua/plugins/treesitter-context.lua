return {
	'nvim-treesitter/nvim-treesitter-context',
	lazy = false,
	priority = 1000,
	config = function()
		require('treesitter-context').setup({
			max_lines = 0,
			trim_scope = 'outer',
			min_window_height = 0,
			patterns = {
				default = {
					'class',
					'function',
					'method',
					'for',
					'while',
					'if',
					'switch',
					'case',
					'interface',
					'enum',
					'#ifdef',
					'#ifndef',
					'#else',
					'#if',
					'else',
				},
			},
			zindex = 20,
			mode = 'cursor',
			separator = nil,
		})
	end,
}
