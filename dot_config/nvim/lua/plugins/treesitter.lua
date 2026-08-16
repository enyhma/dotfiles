return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = {
          "lua", "vim", "vimdoc",
          "javascript", "typescript", "tsx",
          "python", "bash",
          "json", "yaml", "toml",
          "markdown", "markdown_inline", "html", "css",
        },
        auto_install = true,
      })
    end,
  },
}
