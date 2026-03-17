-- return {
-- 	'nvim-telescope/telescope.nvim',
-- 	tag = '0.1.8',
-- 	dependencies = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' } },
-- 	config = function()
-- 		local telescope = require 'telescope'
-- 		local builtin = require 'telescope.builtin'
-- 		telescope.setup {
-- 			defaults = {
-- 				preview = {
-- 					treesitter = false,
-- 				},
-- 			},
-- 			pickers = {
-- 				find_files = {
-- 					theme = 'ivy',
-- 				},
-- 				live_grep = {
-- 					theme = 'ivy',
-- 				},
-- 			},
-- 			extensions = { fzf = {} },
-- 		}
-- 		telescope.load_extension 'fzf'
-- 		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- 		vim.keymap.set('n', '<leader><leader>', builtin.buffers, {})
-- 		vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
-- 	end,
-- }
--
return {
	'dmtrKovalenko/fff.nvim',
	build = function()
		require('fff.download').download_or_build_binary()
	end,
	config = function()
		require('fff').setup({
			prompt_position = 'bottom',
		})
	end,
	opts = { -- (optional)
		debug = {
			enabled = false,
			show_scores = false,
		},
	},
	lazy = false,
	keys = {
		{
			'<leader>ff',
			function()
				require('fff').find_files()
			end,
			desc = 'FFFind files',
		},
		{
			'<leader>fw',
			function()
				require('fff').live_grep()
			end,
			desc = 'LiFFFe grep',
		},
	},
}
