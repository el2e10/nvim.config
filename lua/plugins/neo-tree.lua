return {
	'nvim-neo-tree/neo-tree.nvim',
	branch = 'v3.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		'MunifTanjim/nui.nvim',
	},
	keys = {
		{ '<leader>fe', '<cmd>Neotree toggle<cr>', desc = 'NeoTree' },
	},
	config = function()
		require('neo-tree').setup {
			close_if_last_window = true,
			file_size = {
				enabled = true,
				required_width = 64, -- min width of window required to show this column
			},
			filesystem = {
				hijack_netrw_behavior = 'open_default',
			},
		}
	end,
}
