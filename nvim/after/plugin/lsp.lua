

-- Cmp Config
vim.opt.completeopt = {"menu", "menuone", "noselect"}

local cmp = require("cmp")
cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }, -- For luasnip users.
	},
	{
		{ name = 'buffer' },
	})
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

function on_attach()
	vim.keymap.set("n","K",vim.lsp.buf.hover, {buffer=0})
	vim.keymap.set("n","gd",vim.lsp.buf.definition, {buffer=0})
	vim.keymap.set("n","gT",vim.lsp.buf.type_definition, {buffer=0})
	vim.keymap.set("n","gi",vim.lsp.buf.implementation, {buffer=0})
	vim.keymap.set("n","<Leader>dj",vim.diagnostic.goto_next, {buffer=0})
	vim.keymap.set("n","<Leader>dl","<cmd>Telescope diagnostics<cr>", {buffer=0})
	vim.keymap.set("n","<Leader>R","<cmd>Telescope lsp_references<cr>", {buffer=0})
	vim.keymap.set("n","<Leader>r",vim.lsp.buf.rename, {buffer=0})
end
-- Lsp Config
require("lspconfig").pyright.setup({
	capabilities = capabilities,
	on_attach = on_attach
})
require("lspconfig").clangd.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	single_file_support = true
})
