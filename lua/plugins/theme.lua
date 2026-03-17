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
--
-- return {
-- 	dir="/Users/eldhoittangeorge/Personal/Projects/black-and-green.nvim/",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require('neomodern').setup {
-- 			-- optional configuration here
-- 			theme = 'gyokuro',
-- 			variant = 'dark',
-- 		}
-- 		require('neomodern').load()
-- 	end,
-- }
