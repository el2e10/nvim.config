return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
		local configs = require 'nvim-treesitter.configs'
		configs.setup {
			auto_install = true,
			ensure_installed = { 'lua', 'python', 'go', 'javascript', 'rust', 'zig' },
			highlight = {
				enable = true,
				disable = function(lang, bufnr)
					return vim.api.nvim_buf_line_count(bufnr) > 5000
				end,
			},
			indent = { enable = true },
		}
	end,
}
