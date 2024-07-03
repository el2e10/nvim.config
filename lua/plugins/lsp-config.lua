return {
	{
		'williamboman/mason.nvim',
		config = function()
			require('mason').setup()
		end,
	},
	{
		'williamboman/mason-lspconfig.nvim',
		config = function()
			require('mason-lspconfig').setup {
				ensure_installed = { 'lua_ls', 'gopls', 'ruff', 'tsserver',  },
			}
		end,
	},
	{
		'neovim/nvim-lspconfig',
		config = function()
			local lspconfig = require 'lspconfig'
			lspconfig.lua_ls.setup {}
			lspconfig.tsserver.setup {}
			lspconfig.gopls.setup {}
			lspconfig.ruff.setup {}

			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', 'gf', vim.lsp.buf.format, {})
		end,
	},
}
