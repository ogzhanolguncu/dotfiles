return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      -- Use a simpler theme
      theme = "auto",
      -- Remove section separators
      component_separators = "",
      section_separators = "",
      -- Disable certain sections
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "filename" },
        lualine_c = {},
        lualine_x = {},
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      -- Reduce the overall height
      globalstatus = true,
    },
  },
}
