return {
	{
		'mfussenegger/nvim-dap',
		dependencies = {
			'rcarriga/nvim-dap-ui',
			'theHamsta/nvim-dap-virtual-text',
			'nvim-neotest/nvim-nio',
			'williamboman/mason.nvim',
			'mfussenegger/nvim-dap-python',
		},
		config = function()
			local dap = require 'dap'
			local ui = require 'dapui'

			require('dapui').setup()
			require('nvim-dap-virtual-text').setup()
			require('dap-python').setup("python")

			-- Handled by nvim-dap-go

			-- local elixir_ls_debugger = vim.fn.exepath "elixir-ls-debugger"
			-- if elixir_ls_debugger ~= "" then
			--   dap.adapters.mix_task = {
			--     type = "executable",
			--     command = elixir_ls_debugger,
			--   }

			vim.keymap.set('n', '<space>b', dap.toggle_breakpoint)
			vim.keymap.set('n', '<space>gb', dap.run_to_cursor)

			-- Eval var under cursor
			vim.keymap.set('n', '<space>?', function()
				require('dapui').eval(nil, { enter = true })
			end)

			vim.keymap.set('n', '<F1>', dap.continue)
			vim.keymap.set('n', '<F2>', dap.step_into)
			vim.keymap.set('n', '<F3>', dap.step_over)
			vim.keymap.set('n', '<F4>', dap.step_out)
			vim.keymap.set('n', '<F5>', dap.step_back)
			vim.keymap.set('n', '<F6>', dap.restart)
			vim.keymap.set('n', '<F7>', dap.terminate)

			dap.listeners.before.attach.dapui_config = function()
				ui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				ui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				ui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				ui.close()
			end
		end,
	},
}
