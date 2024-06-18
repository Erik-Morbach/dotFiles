return {
	'williamboman/mason-lspconfig.nvim',
	lazy = false,
	priority = 1000,
	dependencies = {
		'williamboman/mason.nvim',
		'neovim/nvim-lspconfig',
	},
	config = function()
		local mason_lspconfig = require('mason-lspconfig')
		local lspconfig = require('lspconfig')
		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		local on_attach = require('keymap').on_attach

		mason_lspconfig.setup_handlers({
			function (server)
				lspconfig[server].setup {
					capabilities = capabilities,
					on_attach = on_attach
				}
			end,
			["clangd"] = function ()
				lspconfig["clangd"].setup {
					on_attach = on_attach,
					capabilities = capabilities,
					init_options = {
						fallbackFlags = { "-Wno-c++17-extensions", "-Wno-c++17-compat", "-DLOCAL" }
					}
				}
			end,
			["jdtls"] = function()
			end
		})
	end,
}
