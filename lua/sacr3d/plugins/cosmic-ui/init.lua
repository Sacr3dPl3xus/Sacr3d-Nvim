local config = require('sacr3d.config')
local utils = require('sacr3d.utils')

local defaults = {
  border_style = 'rounded',
}

require('cosmic-ui').setup(utils.merge(defaults, config.cosmic_ui or {}))
