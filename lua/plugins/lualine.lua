return {
	'nvim-lualine/lualine.nvim',
	config = function()
		require('lualine').setup {
			options = {
				theme = 'vague',
				component_separators = '',
				section_separators = '',
				disabled_filetypes = { statusline = { 'neo-tree' } },
				globalstatus = false,
			},
			sections = {
				lualine_b = {'branch', 'diagnostics'},
				lualine_c = { { 'filename', path = 1 }, 'searchcount' },
				lualine_x = {},
				lualine_z = { 'selectioncount', 'location' },
			},
			inactive_sections = {
				lualine_x = {},
			},
		}
	end,
}
