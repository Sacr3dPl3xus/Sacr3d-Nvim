local config = require('sacr3d.config')
local colors = {}
local mod = 'sacr3d.theme.integrated.'
local supported_themes = require('sacr3d.theme.plugins').supported_themes

for _, theme in pairs(supported_themes) do
  if theme == config.theme then
    colors = require(mod .. theme)
  end
end

if vim.tbl_isempty(colors) then
  return false
end

return colors
