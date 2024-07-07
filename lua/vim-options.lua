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

