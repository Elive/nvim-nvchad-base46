-- Created by Thanatermesis for Elive Linux
-- This theme is highly inspired by the fluoromachine neovim theme, which is very complete, this is a much lighter version of it using the similar colorsscheme
--
-- Some interesting links:
-- Some hilight names: https://github.com/lukas-reineke/onedark.nvim/blob/master/lua/onedark.lua
-- Darker tool: https://mdigi.tools/darken-color/

local M = {}


--  Colours base00 to base07 are typically variations of a shade and run from darkest to lightest. These colours are used for foreground and background, status bars, line highlighting and such. colours base08 to base0F are typically individual colours used for types, operators, names and variables. In order to create a dark theme, colours base00 to base07 should span from dark to light. For a light theme, these colours should span from light to dark.

M.base_16 = {
  base00 = "#200933",  -- Default Background
  -- base00 = "#262335",  -- Default Background
  base01 = "#57367C",  -- Lighter Background (Used for status bars, line number and folding marks), bg for folded blocks - done
  base02 = "#363465",  -- Selection (visual) Background - done
  base03 = "#af6df9",  -- Comments, Invisibles, Line Highlighting, font for folded blocks - done
  base04 = "#ffcc00",  -- Dark Foreground (Used for status bars) - TODO: temporal to see where it is, replace by the previous one later
  base05 = "#61e2ff",  -- Default Foreground, Caret, Delimiters, Operators
  base06 = "#f5f4f1",  -- Light Foreground (Not often used)
  base07 = "#f9f8f5",  -- Light Background (Not often used)

  -- base08 = "#a6d9ef",  -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted - same
  -- base08 = "#f92672",  -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted - same
  base08 = "#61e2ff",  -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted - same
  base09 = "#af6df9",  -- Integers, Boolean, Constants, XML Attributes, Markup Link Url - same, +boolean
  base0A = "#f92672",  -- Classes, Markup Bold, Search Text Background -- TODO: this color is duplicated, try to use a different one and then set specific Highlighting for the keywords we want to have in red, this also affects the terminal feature
  base0B = "#af6df9",  -- Strings, Inherited Class, Markup Code, Diff Inserted - same
  base0C = "#ffcc00",  -- Support, Regular Expressions, Escape Characters, Markup Quotes - orig
  base0D = "#ffcc00",  -- Functions, Methods, Attribute IDs, Headings - same
  base0E = "#f92672",  -- Keywords, Storage, Selector, Markup Italic, Diff Changed, commands etc
  -- base0E = "#66d9ef",  -- commands etc
  base0F = "#af6df9",  -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>, operators
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
  -- darker_black = "#261732", --   - 6%+ darker than black  -- this version looks better on kitty but not on 256 colors terminals
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

  -- grey = "#465457",   -- linenumbers - same
  -- grey = "#6e5793",   -- linenumbers - 40% lighter than black (the % here depends so choose the perfect grey!)
  -- grey = "#71797d",   -- linenumbers - 40% lighter than black (the % here depends so choose the perfect grey!)
  grey = M.base_16.base01,
  -- grey_fg = "#7e8e91",  -- comments - same
  grey_fg = "#475191",  -- comments - same
  -- grey_fg = "#7b63a3",  -- comments - 10% lighter than grey
  -- grey_fg = "#56676b",  -- comments - 10% lighter than grey
  -- grey_fg2 = "#5D5E58",
  -- grey_fg2 = "#8a74ad",  --   - 20% lighter than grey
  grey_fg2 = "#657a7e",  --   - 20% lighter than grey
  -- light_grey = "#64655F",  --  -
  -- light_grey = "#9682b5",  --  - 28% lighter than grey
  light_grey = "#72898e",  --  - 28% lighter than grey

  baby_pink = "#f98385",
  line = "#363942", -- for lines like vertsplit (see polish_hl) and tab indetations
  -- vibrant_green = "#99c366",
  vibrant_green = "#0add08",
  nord_blue = "#81A1C1",
  -- blue = "#51afef",
  blue = "#65bcff",  -- original color for the mini.indentscope bar in lazyvim
  sun = "#fce668",
  dark_purple = "#b26fc1",
  teal = "#34bfd0",

  statusline_bg = "#2F302A",  -- statusline background - 4% lighter than black
  lightbg = "#3E3F39",  -- selected statusline - 13% lighter than statusline_bg
  -- lightbg = "#4c4d43",  -- selected statusline - 13% lighter than statusline_bg
  lightbg2 = "#3e4038",  -- selected statusline - 7% lighter than statusline_bg
  pmenu_bg = "#61e2ff",  -- menu popup selection
  folder_bg = "#61afef",

  fg = '#8BA7A7',
  bg = '#262335',
  alt_bg = '#241b2f',
  currentline = '#463465',
  selection = '#463465',
  comment = '#495495',
  cyan = '#61E2FF',
  green = '#72f1b8',
  orange = '#ff8b39',
  pink = '#FC199A',
  purple = '#AF6DF9',
  red = '#fe4450',
  yellow = '#FFCC00',
  cursor_fg = '#282a36',
  cursor_bg = '#8BA7A7',
  sign_add = '#72f1b8',
  sign_change = '#ff8b39',
  sign_delete = '#fe4450',
  error = '#fe4450',
  warning = '#ff8b39',
  info = '#61E2FF',
  hint = '#61E2FF',
  other = '#AF6DF9',
  blankline = "#57367c",
  -- active_blankline = '#7E0C4D',
  inlay_hint = '#8C57C7',

}

M.polish_hl = {
  CursorLineNr = { fg = M.base_30.purple },  -- highlighted current line number
  -- other scopes (blankline)
  IndentBlanklineChar = { fg = M.base_30.blankline },  -- for the indentlines
  IndentBlanklineSpaceChar = { fg = M.base_30.blankline },  -- for the indentlines
  -- hilighted scope (blankline)
  IndentBlanklineContextChar = { bold=true, fg = M.base_30.pink },
  MiniIndentscopeSymbol = { bold=true, fg = M.base_30.pink },

  -- CmpBorder = { fg = M.base_30.green },
  -- CmpBorder = { fg = "#aaffcc" },
  --
  -- ["@variable"] = { fg = M.base_30.orange },
  -- -- ["@variable"] = { fg = M.base_30.green },
  -- -- ["@variable"] = { fg = M.base_30.blue },
  -- ["@constant"] = { fg = M.base_30.orange },
  -- -- ["@constant"] = { fg = M.base_30.nord_blue },
  -- ["@punctuation.special"] = { fg = M.base_30.green },
  -- -- ["@punctuation.bracket"] = { fg = M.base_30.green },
  -- ["@operator"] = { fg = M.base_30.red },
  -- -- ["@function.call"] = { fg = M.base_30.white },
  -- ["@function.call"] = { fg = M.base_30.red },
  -- -- ["@function.call"] = { fg = M.base_30.green },
  -- -- make the folded blocks having a transparent background, the text is already very visible
  Folded = { fg = M.base_30.pink, bg = "NONE" },
  -- ["@Folded"] = { fg = M.base_30.green }, -- FIXME: this doesn't works because is overwritten by base46/integrations/defaults.lua ? - TODO: define it in user's conf
  -- -- make the background of the completer menu a little different
  CmpPmenu = { bg = M.base_30.black2 },
  -- CmpBorder = { fg = M.base_30.cyan },
  -- -- more visible searchings
  -- Search = { fg = M.base_30.red, bg = "#FFAF00" },
  -- IncSearch = { fg = M.base_30.pink, bg = "#FFFF00" },
  -- -- CopilotSuggestion = { fg = M.base_30.nord_blue },
  -- -- make the selector in telescope much more visual
  TelescopeSelection = { bg = M.base_30.one_bg2, },
  -- TelescopeNormal = { bg = M.base_30.black2 },
  -- TelescopePromptNormal = { bg = M.base_30.black2 },
  -- -- diffNewFile = { fg = "blue" },  -- TODO: not working, only when added on M.add
  -- WinSeparator = { fg = M.base_30.pink }, -- cyan is beautiful and also is the color of the border of the windows
  -- -- make insert mode green which is more visually intuitive that we are modifying something
  St_InsertMode = { bg = M.base_30.green },
  St_InsertModeSep = { fg = M.base_30.green },
  St_VisualMode = { bg = M.base_30.purple },
  St_VisualModeSep = { fg = M.base_30.purple },
  St_CommandMode = { bg = M.base_30.orange },
  St_CommandModeSep = { fg = M.base_30.orange },
  -- make terminal mode much more shiny becuase is important to know it
  St_TerminalMode = { bg = M.base_30.yellow },
  St_TerminalModeSep = { fg = M.base_30.yellow },
  WinSeparator = { fg = M.base_30.sun },
  -- -- ["@diffNewFile"] = { fg = M.base_30.blue }, -- not working, needs to be in section "added" ?
  -- -- ["@punctuation.bracket"] = { fg = M.base_30.green },
  -- -- ["@boolean"] = { fg = M.base_16.base09 },
  -- -- ["@conditional"] = { fg = M.base_16.base0A },
  -- -- ["parameter"] = { fg = M.base_30.blue },
  -- -- ["@field.key"] = { fg = M.base_30.white },
  -- -- ["@string"] = { fg = M.base_30.sun },
  -- -- -- ["@punctuation.bracket"] = { fg = M.base_30.sun },
}

M.type = "dark"

M = require("base46").override_theme(M, "elive_retrowave")

return M
