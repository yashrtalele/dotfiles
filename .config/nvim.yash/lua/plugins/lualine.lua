local colors = {
  rosewater = "#f5e0dc",
  flamingo = "#f2cdcd",
  pink = "#f5c2e7",
  mauve = "#cba6f7",
  red = "#f38ba8",
  maroon = "#eba0ac",
  peach = "#fab387",
  yellow = "#f9e2af",
  green = "#a6e3a1",
  teal = "#94e2d5",
  sky = "#89dceb",
  sapphire = "#74c7ec",
  blue = "#89b4fa",
  lavender = "#b4befe",
  text = "#cdd6f4",
  subtext1 = "#bac2de",
  subtext0 = "#a6adc8",
  overlay2 = "#9399b2",
  overlay1 = "#7f849c",
  overlay0 = "#6c7086",
  surface2 = "#585b70",
  surface1 = "#45475a",
  surface0 = "#313244",
  base = "#1e1e2e",
  mantle = "#181825",
  crust = "#11111b",
}

base_30 = {
  white = "#D9E0EE",
  darker_black = "#191828",
  black = "#1E1D2D",  --  nvim bg
  black2 = "#252434",
  one_bg = "#2d2c3c", -- real bg of onedark
  one_bg2 = "#363545",
  one_bg3 = "#3e3d4d",
  grey = "#474656",
  grey_fg = "#4e4d5d",
  grey_fg2 = "#555464",
  light_grey = "#605f6f",
  red = "#F38BA8",
  baby_pink = "#ffa5c3",
  pink = "#F5C2E7",
  line = "#383747", -- for lines like vertsplit
  green = "#ABE9B3",
  vibrant_green = "#b6f4be",
  nord_blue = "#8bc2f0",
  blue = "#89B4FA",
  yellow = "#FAE3B0",
  sun = "#ffe9b6",
  purple = "#d0a9e5",
  dark_purple = "#c7a0dc",
  teal = "#B5E8E0",
  orange = "#F8BD96",
  cyan = "#89DCEB",
  statusline_bg = "#232232",
  lightbg = "#2f2e3e",
  pmenu_bg = "#ABE9B3",
  folder_bg = "#89B4FA",
  lavender = "#c7d1ff",
}

local transparent_bg = true and "NONE" or colors.mantle

local bubbles_theme = {
  normal = {
    a = { bg = colors.blue, fg = colors.mantle, gui = "bold" },
    b = { bg = colors.surface0, fg = colors.blue },
    c = { bg = transparent_bg, fg = colors.text },
  },

  insert = {
    a = { bg = colors.green, fg = colors.base, gui = "bold" },
    b = { bg = colors.surface0, fg = colors.green },
  },

  terminal = {
    a = { bg = colors.green, fg = colors.base, gui = "bold" },
    b = { bg = colors.surface0, fg = colors.green },
  },

  command = {
    a = { bg = colors.peach, fg = colors.base, gui = "bold" },
    b = { bg = colors.surface0, fg = colors.peach },
  },

  visual = {
    a = { bg = colors.mauve, fg = colors.base, gui = "bold" },
    b = { bg = colors.surface0, fg = colors.mauve },
  },

  replace = {
    a = { bg = colors.red, fg = colors.base, gui = "bold" },
    b = { bg = colors.surface0, fg = colors.red },
  },

  inactive = {
    a = { bg = transparent_bg, fg = colors.blue },
    b = { bg = transparent_bg, fg = colors.surface1, gui = "bold" },
    c = { bg = transparent_bg, fg = colors.overlay0 },
  },
}

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  init = function()
    vim.g.lualine_laststatus = vim.o.laststatus
    if vim.fn.argc(-1) > 0 then
      -- set an empty statusline till lualine loads
      vim.o.statusline = " "
    else
      -- hide the statusline on the starter page
      vim.o.laststatus = 0
    end
  end,
  opts = function()
    -- PERF: we don't need this lualine require madness 🤷
    local lualine_require = require("lualine_require")
    lualine_require.require = require

    local icons = require("lazyvim.config").icons

    vim.o.laststatus = vim.g.lualine_laststatus

    return {
      options = {
        theme = bubbles_theme,
        component_separators = '|',
        section_separators = { left = '', right = '' },
      },
    }
  end,
}
