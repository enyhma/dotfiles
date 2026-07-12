return {
  -- Shows available keybindings as you type (great for learning)
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")
      wk.setup({
        delay = 400,
      })
      wk.add({
        { "<leader>f", group = "Find" },
        { "<leader>b", group = "Buffer" },
        { "<leader>s", group = "Split" },
        { "<leader>g", group = "Git" },
        { "<leader>c", group = "Code" },
        { "<leader>r", group = "Rename" },
      })
    end,
  },

  -- Git change indicators in the gutter (like VS Code)
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns
          local map = function(mode, l, r, desc)
            vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
          end
          map("n", "]g", gs.next_hunk, "Next git change")
          map("n", "[g", gs.prev_hunk, "Previous git change")
          map("n", "<leader>gs", gs.stage_hunk, "Stage hunk")
          map("n", "<leader>gr", gs.reset_hunk, "Reset hunk")
          map("n", "<leader>gp", gs.preview_hunk, "Preview hunk")
          map("n", "<leader>gb", gs.blame_line, "Blame line")
        end,
      })
    end,
  },

  -- Comment with <leader>/ (like Cmd+/ in VS Code)
  {
    "numToStr/Comment.nvim",
    keys = {
      { "<leader>/", "<Plug>(comment_toggle_linewise_current)", desc = "Toggle comment" },
      { "<leader>/", "<Plug>(comment_toggle_linewise_visual)", mode = "v", desc = "Toggle comment" },
    },
    config = function()
      require("Comment").setup()
    end,
  },
}
