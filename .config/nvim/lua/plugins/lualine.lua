return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.options = {
      icons_enabled = true,
      theme = "auto",
      component_separators = '|',
      section_separators = { left = '', right = '' },
    }
  end,
}
