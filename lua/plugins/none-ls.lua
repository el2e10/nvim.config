return {
	'nvimtools/none-ls.nvim',
	config = function()
		local null_ls = require 'null-ls'
		null_ls.setup {
			debug = true,
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.mypy,
			},
		}
		vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
	end,
}
