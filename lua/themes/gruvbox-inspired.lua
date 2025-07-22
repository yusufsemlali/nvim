-- Credits to original https://github.com/morhetz/gruvbox
-- This is modified version of it

local M = {}

M.base_30 = {
  white = "#d5c4a1",
  darker_black = "#1d2021",
  black = "#1d2021", -- nvim bg
  black2 = "#3c3836",
  one_bg = "#504945",
  one_bg2 = "#665c54",
  one_bg3 = "#bdae93",
  grey = "#665c54",
  grey_fg = "#bdae93",
  grey_fg2 = "#ebdbb2",
  light_grey = "#fbf1c7",
  red = "#fb4934",
  baby_pink = "#fe8019",
  pink = "#d3869b",
  line = "#504945", -- for lines like vertsplit
  green = "#b8bb26",
  vibrant_green = "#8ec07c",
  nord_blue = "#83a598",
  blue = "#83a598",
  yellow = "#fabd2f",
  sun = "#fabd2f",
  purple = "#d3869b",
  dark_purple = "#bdae93",
  teal = "#8ec07c",
  orange = "#fe8019",
  cyan = "#8ec07c",
  statusline_bg = "#3c3836",
  lightbg = "#504945",
  pmenu_bg = "#83a598",
  folder_bg = "#8ec07c",
}

M.base_16 = {
  base00 = "#1d2021", -- background
  base01 = "#3c3836", -- bright green
  base02 = "#504945", -- bright yellow
  base03 = "#665c54", -- bright black
  base04 = "#bdae93", -- bright blue
  base05 = "#d5c4a1", -- foreground/white
  base06 = "#ebdbb2", -- bright magenta
  base07 = "#fbf1c7", -- bright white
  base08 = "#fb4934", -- red
  base09 = "#fe8019", -- bright red
  base0A = "#fabd2f", -- yellow
  base0B = "#b8bb26", -- green
  base0C = "#8ec07c", -- cyan
  base0D = "#83a598", -- blue
  base0E = "#d3869b", -- magenta
  base0F = "#d65d0e", -- bright cyan
}

M.type = "dark"

M = require("base46").override_theme(M, "gruvbox")

M.polish_hl = {
  syntax = {
    Operator = { fg = M.base_30.nord_blue },
  },

  treesitter = {
    ["@operator"] = { fg = M.base_30.nord_blue },
  },
}

return M
