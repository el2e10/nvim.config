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
return {
	'ellisonleao/gruvbox.nvim',
	priority = 1000,
	config = function()
		require('gruvbox').setup {
			italic = {
				strings = false,
				emphasis = false,
				comments = true,
				operators = false,
				folds = true,
			},
		}
		vim.cmd 'colorscheme gruvbox'
	end,
}
