return {
  -- Icons (replaces nvim-web-devicons, used by neo-tree, lualine, bufferline, etc.)
  {
    "echasnovski/mini.icons",
    lazy = false,
    priority = 900,
    config = function()
      require("mini.icons").setup()
      -- Make plugins that require('nvim-web-devicons') use mini.icons instead
      MiniIcons.mock_nvim_web_devicons()
    end,
  },

  -- Auto-close brackets, quotes, etc. (replaces nvim-autopairs)
  {
    "echasnovski/mini.pairs",
    event = "InsertEnter",
    config = function()
      require("mini.pairs").setup()
    end,
  },
}
