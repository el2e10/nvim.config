vim.opt.number = true
vim.opt.relativenumber = true
vim.g.mapleader = ' '
vim.opt.cursorline = true
vim.opt.scrolloff = 15
vim.opt.signcolumn = 'yes'

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.updatetime = 250
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show error message' })

vim.opt.mouse = 'a'

-- Remove the highligh of search
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Yanking highlight
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
})


-- Code folding
vim.opt.foldlevel = 99
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"


-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrwSettings = 1
vim.g.loaded_netrwFileHandlers = 1

