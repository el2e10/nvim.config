return {
	'vague2k/vague.nvim',
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other plugins
	config = function()
		require('vague').setup {
			italic = false,
			style = {
				boolean = 'bold',
				number = 'none',
				float = 'none',
				error = 'bold',
				comments = 'italic',
				conditionals = 'none',
				functions = 'none',
				headings = 'bold',
				operators = 'none',
				strings = 'none',
				variables = 'none',

				-- keywords
				keywords = 'none',
				keyword_return = 'none',
				keywords_loop = 'none',
				keywords_label = 'none',
				keywords_exception = 'none',

				-- builtin
				builtin_constants = 'bold',
				builtin_functions = 'none',
				builtin_types = 'bold',
				builtin_variables = 'none',
			},
		}
		vim.cmd 'colorscheme vague'
	end,
}
-- return {
-- 	'zenbones-theme/zenbones.nvim',
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.g.zenbones_darken_comments = 45
-- 		vim.g.zenbones_compat = 1
-- 		vim.cmd.colorscheme 'zenbones'
-- 	end,
-- }
-- return {
-- 	'rose-pine/neovim',
-- 	name = 'rose-pine',
-- 	config = function()
-- 		require('rose-pine').setup {
-- 			variant = 'moon',
-- 			styles = {
-- 				italic = false,
-- 			},
-- 		}
-- 		vim.cmd 'colorscheme rose-pine'
-- 	end,
-- }
-- return {
-- 	'catppuccin/nvim',
-- 	name = 'catppuccin',
-- 	priority = 1000,
-- 	config = function()
-- 		require('catppuccin').setup {
-- 			flavor = 'mocha',
-- 			no_italic = true,
-- 			integrations = {
-- 				neotree = true
-- 			}
-- 		}
-- 		vim.cmd.colorscheme 'catppuccin'
-- 	end,
-- }
--
--
-- return {
-- 	'ellisonleao/gruvbox.nvim',
-- 	priority = 1000,
-- 	config = function()
-- 		require('gruvbox').setup {
-- 			italic = {
-- 				strings = false,
-- 				emphasis = false,
-- 				comments = true,
-- 				operators = false,
-- 				folds = true,
-- 			},
-- 		}
-- 		vim.cmd 'colorscheme gruvbox'
-- 	end,
-- }
