-- Credits to original theme https=//monokai.pro/
-- This is modified version of it
-- Modified by Thanatermesis for Elive Linux
--
-- Some interesting links:
-- Some hilight names: https://github.com/lukas-reineke/onedark.nvim/blob/master/lua/onedark.lua
-- Darker tool: https://mdigi.tools/darken-color/

local M = {}

M.base_30 = {
  white = "#f5f4f1",
  darker_black = "#22231D",
  black = "#272822", --  nvim bg + tab selected
  black2 = "#2F302A",  -- tab top line
  one_bg = "#363731", -- real bg of onedark
  one_bg2 = "#3E3F39",  -- bg hilighted for "selected block"
  one_bg3 = "#464741",
  grey = "#465457",   -- linenumbers
  grey_fg = "#7e8e91",  -- comments
  grey_fg2 = "#5D5E58",
  light_grey = "#64655F",
  -- red = "#e36d76",  -- orig
  red = "#f92672",
  baby_pink = "#f98385",
  pink = "#f36d76",
  line = "#363942", -- for lines like vertsplit
  green = "#96c367",
  vibrant_green = "#99c366",
  nord_blue = "#81A1C1",
  blue = "#51afef",
  yellow = "#e6c181",
  sun = "#fce668",
  purple = "#c885d7",
  dark_purple = "#b26fc1",
  teal = "#34bfd0",
  orange = "#d39467",
  cyan = "#41afef",
  statusline_bg = "#2F302A",  -- statusline background
  lightbg = "#3E3F39",  -- selected statusline
  pmenu_bg = "#a9c366",  -- menu popup selection
  folder_bg = "#61afef",
}

M.base_16 = {
  -- base00 = "#272822",
  base00 = "#1b1d1e",  -- background - XXX - done
  base01 = "#383830",  -- bg for folded blocks
  -- base02 = "#49483e",
  base02 = "#4e4e4e",  -- bg for visual selection - done
  base03 = "#75715e",  -- font for folded blocks
  base04 = "#a59f85",
  base05 = "#f8f8f2",
  base06 = "#f5f4f1",
  base07 = "#f9f8f5",
  base08 = "#fd971f",  -- same
  base09 = "#ae81ff",  -- same
  -- base0A = "#f4bf75",  -- variables, etc
  -- base0A = "#a6e22e",  -- variables, etc
  base0A = "#f92672",  -- variables, etc
  -- base0B = "#a6e22e",  -- strings - same
  base0B = "#ebe4a5",  -- strings - same
  base0C = "#a1efe4",  -- orig
  -- base0C = "#66d9ef",  -- seems like we used this one?
  -- base0D = "#66d9ef",  -- function names - same
  base0D = "#a6e22e",  -- function names - same
  -- base0E = "#f92672",  -- commands etc
  base0E = "#66d9ef",  -- commands etc
  -- base0F = "#cc6633",  -- operators
  base0F = "#8a8a8a",  -- operators
}

M.polish_hl = {
  ["parameter"] = { fg = M.base_30.blue },
  ["@field.key"] = { fg = M.base_30.white },
  ["@string"] = { fg = M.base_30.sun },
  ["@boolean"] = { fg = M.base_16.base09 },
  ["@punctuation.bracket"] = { fg = M.base_30.sun },
  Operator = { fg = M.base_30.red },
  ["@operator"] = { fg = M.base_30.red },
}

M.type = "dark"

M = require("base46").override_theme(M, "elive_molokai")

return M
