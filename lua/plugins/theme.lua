return {
	'catppuccin/nvim',
	name = 'catppuccin',
	priority = 1000,
	config = function()
		require('catppuccin').setup {
			flavor = 'mocha',
			no_italic = true,
		}
		vim.cmd.colorscheme 'catppuccin'
	end,
}
--
--
-- return {
-- 	'rose-pine/neovim',
-- 	name = 'rose-pine',
-- 	config = function()
-- 		vim.cmd.colorscheme 'rose-pine'
-- 		require('rose-pine').setup {
-- 			style = { italics = false },
-- 		}
-- 	end,
-- }
