local config = require('sacr3d.config')
local utils = require('sacr3d.utils')

local defaults = {
  border_style = 'rounded',

  -- rename popup settings
  rename = {
    border = {
      highlight = 'FloatBorder',
      style = 'rounded',
      title = ' RE:Name ',
      title_align = 'left',
      title_hl = 'FloatBorder',
    },
    prompt = ' ',
    prompt_hl = 'Comment',
  },

  code_actions = {
    min_width = nil,
    border = {
      bottom_hl = 'FloatBorder',
      highlight = 'FloatBorder',
      style = 'rounded',
      title = 'Code Actions',
      title_align = 'center',
      title_hl = 'FloatBorder',
    },
  }
}

require('cosmic-ui').setup(utils.merge(defaults, config.cosmic_ui or {}))
