return {
  -- {
  --   "folke/tokyonight.nvim",
  --   config = function()
  --     require("tokyonight").setup({
  --       style = "storm",
  --       light_style = "day",
  --       transparent = true,
  --       -- terminal_colors = true,
  --       styles = {
  --         comments = { italic = true },
  --         keywords = { bold = true },
  --         types = { bold = true },
  --         sidebars = "transparent",
  --         floats = "transparent",
  --       },
  --       dim_inactive = true,
  --       lualine_bold = true,
  --       day_brightness = 0.3,
  --       cache = true,
  --       on_colors = function(colors) end,
  --       on_highlights = function(highlights, colors) end,
  --       plugins = {
  --         "nvim-cmp",
  --         "nvim-tree",
  --         "telescope",
  --         "which-key",
  --       },
  --     })
  --   end,
  -- },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("kanagawa").setup({
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = { bold = true },
        keywordStyle = { bold = true },
        statementStyle = { bold = true },
        typeStyle = { bold = true },
        transparent = true,
        terminalColors = false,
        compile = true,
        dimInactive = true,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
                float = { bg = "none" },
                sidebar = { bg = "none" },
              },
            },
          },
        },
        overrides = {},
        background = {
          dark = "wave",
          light = "lotus",
        },
        theme = "wave",
      })
      vim.cmd("colorscheme kanagawa-wave") -- Explicitly set the colorscheme after setup
    end,
  },
}
