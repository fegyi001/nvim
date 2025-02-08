return {
	{
		"mfussenegger/nvim-dap",
		event = "VeryLazy",
	},
	{
		"rcarriga/nvim-dap-ui",
		event = "VeryLazy",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
			config = function()
				local dap, dapui = require("dap"), require("dapui")
				dap.listeners.before.attach.dapui_config = function()
					dapui.open()
				end
				dap.listeners.before.launch.dapui_config = function()
					dapui.open()
				end
				dap.listeners.before.event_terminated.dapui_config = function()
					dapui.close()
				end
				dap.listeners.before.event_exited.dapui_config = function()
					dapui.close()
				end
			end,
		},
		config = function()
			require("dapui").setup()
			local map = vim.keymap.set
			-- Nvim DAP
			map("n", "<leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
			map("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
			map("n", "<leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
			map("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
			map(
				"n",
				"<leader>db",
				"<cmd>lua require'dap'.toggle_breakpoint()<CR>",
				{ desc = "Debugger toggle breakpoint" }
			)
			map(
				"n",
				"<leader>dd",
				"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
				{ desc = "Debugger set conditional breakpoint" }
			)
			map("n", "<leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
			map("n", "<leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

			-- rustaceanvim
			map("n", "<leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })
		end,
	},
}
