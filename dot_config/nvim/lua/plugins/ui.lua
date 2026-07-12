return {
  -- Status line (bottom bar like VS Code)
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = {
          theme = "tokyonight",
          globalstatus = true,
        },
      })
    end,
  },

  -- Buffer tabs (top bar like VS Code tabs)
  {
    "akinsho/bufferline.nvim",
    version = "*",
    config = function()
      require("bufferline").setup({
        options = {
          diagnostics = "nvim_lsp",
          offsets = {
            {
              filetype = "neo-tree",
              text = "File Explorer",
              highlight = "Directory",
              text_align = "left",
            },
          },
        },
      })
    end,
  },

  -- Indent guides (like VS Code's indentation lines)
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup()
    end,
  },
}
