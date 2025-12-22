-- Servers
vim.lsp.config('lua_ls', {})
vim.lsp.enable 'lua_ls'

vim.lsp.config('ty', {
	cmd = { 'ty', 'server' },
	filetypes = { 'python' },
	root_markers = {
		'pyproject.toml',
		'setup.py',
		'setup.cfg',
		'requirements.txt',
		'.git',
	},
	settings = {
		args = {
			'--ignore',
			'E501',
		},
	},
})
vim.lsp.enable 'ty'

vim.lsp.config('clangd', {})
vim.lsp.enable 'clangd'

vim.lsp.config('zls', {})
vim.lsp.enable 'zls'

vim.lsp.config('ts_ls', {})
vim.lsp.enable 'ts_ls'

vim.lsp.config('biome', {
	cmd = { 'biome', 'lsp-proxy' },
	filetypes = { 'javascript', 'typescript', 'json' },
	single_file_support = true,
})
vim.lsp.enable 'biome'

vim.lsp.config('gopls', {
	settings = {
		gopls = {
			analyses = { unusedparams = true },
			staticcheck = true,
			gofumpt = true,
		},
	},
})
vim.lsp.enable 'gopls'

-- Keymaps
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local opts = { buffer = ev.buf }
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', 'gf', function()
			local ft = vim.bo[ev.buf].filetype
			vim.lsp.buf.format {
				async = true,
				filter = function(client)
					if ft == 'python' or ft == 'lua' then
						return client.name == 'null-ls'
					end
					return client.server_capabilities.documentFormattingProvider
				end,
			}
		end, opts)
	end,
})
