return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
		},
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
		"xiyaowong/telescope-emoji.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local transform_mod = require("telescope.actions.mt").transform_mod

		local trouble = require("trouble")
		local trouble_telescope = require("trouble.sources.telescope")

		-- or create your custom action
		local custom_actions = transform_mod({
			open_trouble_qflist = function(prompt_bufnr)
				trouble.toggle("quickfix")
			end,
		})

		telescope.setup({
			defaults = {
				-- path_display = { "absolute" },
				path_display = { "truncate" },
				layout_config = {
					width = 0.9,
					preview_cutoff = 120,
					horizontal = {
						preview_width = 0.25,
					},
				},
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
						["<C-t>"] = trouble_telescope.open,
					},
				},
			},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("emoji")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles hidden=true<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep hidden=true<cr>", { desc = "Find string in cwd" })
		keymap.set(
			"n",
			"<leader>fc",
			"<cmd>Telescope grep_string hidden=true<cr>",
			{ desc = "Find string under cursor in cwd" }
		)
		keymap.set("n", "<leader>fn", "<cmd>Telescope notify<cr>", { desc = "Find notifications" })
		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
		keymap.set("n", "<leader>fe", "<cmd>Telescope emoji<cr>", { desc = "Find emojis" })
		keymap.set("n", "<leader>fy", "<cmd>Telescope registers<cr>", { desc = "Find registers" })
		keymap.set("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", { desc = "Quickfix list" })
		keymap.set("n", "<leader>fo", "<cmd>Telescope buffers<cr>", { desc = "Find opened files" })
		keymap.set("n", "<leader>f?", "<cmd>Telescope help_tags<cr>", { desc = "Find in help" })
	end,
	-- change some options
	opts = {
		defaults = {
			layout_strategy = "horizontal",
			layout_config = {
				prompt_position = "top",
				horizontal = { width = 0.9, height = 0.95, preview_height = 0.5 },
			},
			sorting_strategy = "ascending",
			winblend = 10,
		},
	},
}
