return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      picker = {},
      zen = {},
      scroll = {},
    },
    keys = {
      { "<leader>ff", function() Snacks.picker.files() end, desc = "Find files" },
      { "<leader>fg", function() Snacks.picker.grep() end, desc = "Search in files" },
      { "<leader>fd", function()
          local dir = vim.fn.input("Dir: ", "", "dir")
          if dir ~= "" then Snacks.picker.grep({ cwd = dir }) end
        end, desc = "Grep in directory" },
      { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
      { "<leader>ft", function() Snacks.picker.pickers() end, desc = "All pickers" },
      { "<leader>z",  function() Snacks.zen() end, desc = "Toggle zen mode" },
      { "<leader>Z",  function() Snacks.zen.zoom() end, desc = "Toggle zoom" },
    },
  },
}
