return {
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = { "folke/snacks.nvim" },
    keys = {
      { "<leader>e", "<cmd>Yazi<cr>",     desc = "Open yazi (current file)" },
      { "<leader>E", "<cmd>Yazi cwd<cr>", desc = "Open yazi (cwd)" },
    },
    opts = {
      open_for_directories = true,
    },
  },
}
