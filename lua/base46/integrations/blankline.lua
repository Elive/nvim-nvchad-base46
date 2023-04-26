local colors = require("base46").get_theme_tb "base_30"

return {
  IndentBlanklineChar = { fg = colors.line },  -- vertical highlighted all
  IndentBlanklineSpaceChar = { fg = colors.line },
  IndentBlanklineContextChar = { bold=true, fg = colors.teal },  -- vertical highlighted actual
  -- IndentBlanklineContextStart = { bg = colors.one_bg2 },  -- hilighted line of actual context
  -- IndentBlanklineContextStart = { fg = colors.teal, underline=true },  -- hilighted line of actual context
  IndentBlanklineContextStart = { underline=true },  -- hilighted line of actual context
}
