return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
	},
	config = function()
		require("dashboard").setup({
			theme = "doom",
			config = {
				header = {
					"",
					"",
					"",
					"",
					"",
					"",
					"███████╗███████╗ ██████╗██╗   ██╗██╗██╗   ██╗██╗███╗   ███╗",
					"██╔════╝██╔════╝██╔════╝╚██╗ ██╔╝██║██║   ██║██║████╗ ████║",
					"█████╗  █████╗  ██║  ███╗╚████╔╝ ██║██║   ██║██║██╔████╔██║",
					"██╔══╝  ██╔══╝  ██║   ██║ ╚██╔╝  ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
					"██║     ███████╗╚██████╔╝  ██║   ██║ ╚████╔╝ ██║██║ ╚═╝ ██║",
					"╚═╝     ╚══════╝ ╚═════╝   ╚═╝   ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
					"",
					"",
					"",
				},
				center = {
					{ desc = "💤 Lazy update", group = "DashboardShortCut", action = "Lazy update", key = "l" },
					{ desc = "📦 Mason", group = "DashboardShortCut", action = "Mason", key = "m" },
					{
						desc = "📁 Find Files",
						group = "Label",
						action = "Telescope find_files",
						key = "f",
					},
					{
						desc = "♻️  Find Recent Files                   ",
						group = "Label",
						action = "Telescope oldfiles",
						key = "r",
					},
					{
						desc = "🔍 Search text",
						group = "Label",
						action = "Telescope live_grep",
						key = "g",
					},
					{
						desc = "🍺 Quit",
						group = "Etc",
						action = "qa",
						key = "q",
					},
				},
				project = {
					enable = false,
				},
				mru = { limit = 4, label = "Recent files", cwd_only = true },
				footer = function()
					local version = vim.version()
					local major = vim.inspect(version.major)
					local minor = vim.inspect(version.minor)
					local patch = vim.inspect(version.patch)
					local semver = major .. "." .. minor .. "." .. patch
					local stats = require("lazy").stats()
					local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
					return {
						"",
						"🚀 This is Neovim v" .. semver,
						"",
						"⚡Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms",
					}
				end,
				hide = {
					statusline = false,
				},
			},
		})
	end,
}
