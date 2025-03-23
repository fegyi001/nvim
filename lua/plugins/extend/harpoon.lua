return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  depencencies = { "nvim-telescope/telescope.nvim" },
  opts = {
    settings = {
      save_on_toggle = true,
    },
  },
  keys = function()
    local keys = {
      {
        "<leader>h",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list(), {
            ui_width_ratio = 0.85,
            ui_min_width = 20,
            height_in_lines = 10,
          })
        end,
        desc = "Harpoon Quick Menu",
      },
      {
        "<leader>ha",
        function()
          require("harpoon"):list():add()
        end,
        desc = "Harpoon add",
      },
    }
    for i = 1, 9 do
      table.insert(keys, {
        "<leader>" .. i,
        function()
          require("harpoon"):list():select(i)
        end,
        desc = "Harpoon to file " .. i,
      })
    end
    return keys
  end,
  config = function()
    local harpoon = require("harpoon")
    local telescope = require("telescope")
    local telescope_config = require("telescope.config")
    harpoon:setup({})
    local conf = telescope_config.values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end
      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
            results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
        })
        :find()
    end
    vim.keymap.set("n", "<leader>ht", function()
      toggle_telescope(harpoon:list())
    end, { desc = "Open Harpoon in Telescope" })
  end,
}
