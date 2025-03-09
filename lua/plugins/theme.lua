return {
	'catppuccin/nvim',
	name = 'catppuccin',
	priority = 1000,
	config = function()
		require('catppuccin').setup {
			flavor = 'mocha',
			no_italic = true,
			integrations = {
				neotree = true
			}
		}
		vim.cmd.colorscheme 'catppuccin'
	end,
}
