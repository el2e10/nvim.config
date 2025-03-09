return {
	'nvim-lualine/lualine.nvim',
	config = function()
		require('lualine').setup {
			options = {
				theme = 'OceanicNext',
				component_separators = '',
				section_separators = '',
				disabled_filetypes = { statusline = { 'neo-tree' } },
				globalstatus = false
			},
			sections = {
				lualine_x = {"datetime", "filetype"}
			},
			inactive_sections = {
				lualine_x = {}
			}

		}
	end,
}
