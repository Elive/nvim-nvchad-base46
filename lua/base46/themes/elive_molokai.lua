-- Credits to original theme https=//monokai.pro/
-- This is modified version of it
-- Modified by Thanatermesis for Elive Linux
--
-- Some interesting links:
-- Some hilight names: https://github.com/lukas-reineke/onedark.nvim/blob/master/lua/onedark.lua
-- Darker tool: https://mdigi.tools/darken-color/

local M = {}


--  Colours base00 to base07 are typically variations of a shade and run from darkest to lightest. These colours are used for foreground and background, status bars, line highlighting and such. colours base08 to base0F are typically individual colours used for types, operators, names and variables. In order to create a dark theme, colours base00 to base07 should span from dark to light. For a light theme, these colours should span from light to dark.

M.base_16 = {
  -- base00 = "#272822",
  -- base00 = "#1b1d1e",  -- Default Background - done - same
  -- base00 = "#1c1726",  -- Default Background - done - galactic-purple version
  base00 = "#181320",  -- Default Background - done - galactic-purple version
  base01 = "#383830",  -- Lighter Background (Used for status bars, line number and folding marks), bg for folded blocks - done
  -- base02 = "#49483e",
  base02 = "#4e5e4e",  -- Selection (visual) Background - done
  -- base03 = "#75715e",  -- Comments, Invisibles, Line Highlighting, font for folded blocks
  base03 = "#ae81ff",  -- Comments, Invisibles, Line Highlighting, font for folded blocks - done
  -- base04 = "#a59f85",  -- Dark Foreground (Used for status bars)
  base04 = "#FFFF00",  -- Dark Foreground (Used for status bars) - TODO: temporal to see where it is, replace by the previous one later
  base05 = "#f8f8f2",  -- Default Foreground, Caret, Delimiters, Operators
  base06 = "#f5f4f1",  -- Light Foreground (Not often used)
  base07 = "#f9f8f5",  -- Light Background (Not often used)

  -- base08 = "#fd971f",  -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted - same
  -- base08 = "#a6e22e",  -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted - same
  base08 = "#66d9ef",  -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted - same
  base09 = "#ae81ff",  -- Integers, Boolean, Constants, XML Attributes, Markup Link Url - same, +boolean
  -- base0A = "#f4bf75",  -- Classes, Markup Bold, Search Text Background -
  -- base0A = "#a6e22e",  --
  base0A = "#f92672",  -- - TODO: this color is duplicated, try to use a different one and then set specific Highlighting for the keywords we want to have in red, this also affects the terminal feature
  -- base0A = "#e6c181",  --
  -- base0B = "#a6e22e",  -- Strings, Inherited Class, Markup Code, Diff Inserted - same
  base0B = "#ebe4a5",  -- strings - same
  base0C = "#a1efe4",  -- Support, Regular Expressions, Escape Characters, Markup Quotes - orig
  -- base0C = "#66d9ef",  -- seems like we used this one?
  -- base0D = "#66d9ef",  -- Functions, Methods, Attribute IDs, Headings - same
  base0D = "#a6e22e",  -- function names - same
  base0E = "#f92672",  -- Keywords, Storage, Selector, Markup Italic, Diff Changed, commands etc
  -- base0E = "#66d9ef",  -- commands etc
  -- base0F = "#cc6633",  -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>, operators
  base0F = "#999999",  -- operators
}

M.base_30 = {
  white = "#f5f4f1",
  -- black = "#272822", --  nvim bg + tab selected
  -- black = "#1b1d1e", --  nvim bg + tab selected - same
  black = M.base_16.base00, --  nvim bg + tab selected
  -- darker_black = "#1b1f27", --   - 6%+ darker than black - used on Whichkey background
  -- darker_black = "#17121e", --   - 6%+ darker than black
  -- darker_black = "#191b1c", --   - 6%+ darker than black
  darker_black = "#291d3f", --   - 6%+ darker than black
  -- black2 = "#252931",  -- tab top line - 6%+ lighter than black
  -- black2 = "#251d31",  -- tab top line - 6%+ lighter than black
  black2 = "#282b2c",  -- tab top line - 6%+ lighter than black
  -- black2 = "#303435",  -- tab top line - 6%+ lighter than black

  -- one_bg = "#363731", --   - 10%+ lighter than black
  -- one_bg = "#2e243d", --   - 10%+ lighter than black
  one_bg = "#303436", --   - 10%+ lighter than black
  -- one_bg2 = "#3E3F39",  -- bg hilighted for "selected block" - 19%+ lighter than black
  -- one_bg2 = "#413357",  -- bg hilighted for "selected block" - 19%+ lighter than black
  one_bg2 = "#44494b",  -- bg hilighted for "selected block" - 19%+ lighter than black
  -- one_bg3 = "#464741",  --   - 27% lighter than black
  -- one_bg3 = "#52416e",  --   - 27% lighter than black
  -- one_bg3 = "#555b5e",  --   - 27% lighter than black
  one_bg3 = "#34bfd0",  --   - 27% lighter than black - telescope borders,

  grey = "#465457",   -- linenumbers - same
  -- grey = "#6e5793",   -- linenumbers - 40% lighter than black (the % here depends so choose the perfect grey!)
  -- grey = "#71797d",   -- linenumbers - 40% lighter than black (the % here depends so choose the perfect grey!)
  grey_fg = "#7e8e91",  -- comments - same
  -- grey_fg = "#7b63a3",  -- comments - 10% lighter than grey
  -- grey_fg = "#56676b",  -- comments - 10% lighter than grey
  -- grey_fg2 = "#5D5E58",
  -- grey_fg2 = "#8a74ad",  --   - 20% lighter than grey
  grey_fg2 = "#657a7e",  --   - 20% lighter than grey
  -- light_grey = "#64655F",  --  -
  -- light_grey = "#9682b5",  --  - 28% lighter than grey
  light_grey = "#72898e",  --  - 28% lighter than grey

  -- red = "#e36d76",  -- orig
  red = "#f92672",
  baby_pink = "#f98385",
  pink = "#f36d76",
  line = "#363942", -- for lines like vertsplit
  -- green = "#96c367",
  green = "#a6e22e",
  -- vibrant_green = "#99c366",
  vibrant_green = "#0add08",
  nord_blue = "#81A1C1",
  blue = "#51afef",
  yellow = "#e6c181",
  sun = "#fce668",
  -- purple = "#c885d7",
  purple = "#ae81ff",
  dark_purple = "#b26fc1",
  teal = "#34bfd0",
  -- orange = "#d39467",
  orange = "#fd971f",
  -- cyan = "#41afef",
  cyan = "#66d9ef",
  statusline_bg = "#2F302A",  -- statusline background - 4% lighter than black
  lightbg = "#3E3F39",  -- selected statusline - 13% lighter than statusline_bg
  -- lightbg = "#4c4d43",  -- selected statusline - 13% lighter than statusline_bg
  lightbg2 = "#3e4038",  -- selected statusline - 7% lighter than statusline_bg
  pmenu_bg = "#a9c366",  -- menu popup selection
  folder_bg = "#61afef",
}

M.polish_hl = {
  ["@variable"] = { fg = M.base_30.orange },
  ["@operator"] = { fg = M.base_30.red },
  -- make the folded blocks having a transparent background, the text is already very visible
  Folded = { bg = "NONE" },
  -- make the background of the completer menu a little different
  CmpPmenu = { bg = M.base_30.black2 },
  CmpBorder = { fg = M.base_30.cyan },
  -- more visible searchings
  Search = { fg = M.base_30.base00, bg = "#FFAF00" },
  IncSearch = { fg = M.base_30.base00, bg = "#FFFF00" },
  -- make the selector in telescope much more visual
  TelescopeSelection = { bg = M.base_30.grey_fg2, },
  TelescopeNormal = { bg = M.base_30.black2 },
  TelescopePromptNormal = { bg = M.base_30.black2 },
  -- diffNewFile = { fg = "blue" },  -- TODO: not working, only when added on M.add

  -- ["@diffNewFile"] = { fg = M.base_30.blue }, -- not working, needs to be in section "added" ?
  -- ["@punctuation.bracket"] = { fg = M.base_30.green },
  -- ["@boolean"] = { fg = M.base_16.base09 },
  -- ["@conditional"] = { fg = M.base_16.base0A },
  -- ["@Folded"] = { bg = M.base_16.base00 }, -- FIXME: this doesn't works because is overwritten by base46/integrations/defaults.lua ? - TODO: define it in user's conf
  -- ["parameter"] = { fg = M.base_30.blue },
  -- ["@field.key"] = { fg = M.base_30.white },
  -- ["@string"] = { fg = M.base_30.sun },
  -- -- ["@punctuation.bracket"] = { fg = M.base_30.sun },
}

M.type = "dark"

M = require("base46").override_theme(M, "elive_molokai")

return M
