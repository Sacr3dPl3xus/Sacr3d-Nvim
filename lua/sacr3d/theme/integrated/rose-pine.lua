local theme = require('rose-pine.palette')

local colors = {
  white = theme.text,
  bg = theme.surface,
  bg_highlight = theme.surface,
  normal = theme.rose,
  insert = theme.foam,
  command = theme.pine,
  visual = theme.iris,
  replace = theme.gold,
  diffAdd = theme.foam,
  diffModified = theme.pine,
  diffDeleted = theme.rose,
  trace = theme.rose,
  hint = theme.pine,
  info = theme.foam,
  error = theme.love,
  warn = theme.rose,
  floatBorder = theme.rose,
  selection_caret = theme.iris,
}
return colors
