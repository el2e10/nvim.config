return {
	'stevearc/oil.nvim',

	config = function()
		require('oil').setup {
			columns = { 'size', 'oil', 'icon' },
			delete_to_trash = true,
			default_file_explorer = false,
			view_options = { show_hidden = true },
			float = {
				max_width = .7,
				max_height = .7,
				preview_split = "right"
			}
		}
		vim.keymap.set('n', '<space>-', require('oil').toggle_float)
	end,
}
