return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.6',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local telescope = require 'telescope'
		local builtin = require 'telescope.builtin'
		telescope.setup {
			pickers = {
				find_files = {
					layout_strategy = 'vertical'
				},
			},
		}
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader><leader>', builtin.buffers, {})
		vim.keymap.set('n', '<leader>fw', builtin.grep_string, {})
	end,
}
