return {
	'nvim-lualine/lualine.nvim',
	config = function()
		require('lualine').setup {
			options = {
				theme = 'onedark',
				component_separators = '',
				section_separators = '',
				disabled_filetypes = { statusline = { 'neo-tree' } },
				globalstatus = false,
			},
			sections = {
				lualine_c = { 'filename', 'searchcount' },
				lualine_x = { 'datetime', 'filetype' },
				lualine_z = { 'selectioncount', 'location' },
			},
			inactive_sections = {
				lualine_x = {},
			},
		}
	end,
}
