local config = require('sacr3d.config')
local icons = require('sacr3d.theme.icons')
local utils = require('sacr3d.utils')

require('notify').setup(utils.merge({
  icons = {
    ERROR = icons.error,
    WARN = icons.warn,
    INFO = icons.info,
    DEBUG = icons.debug,
    TRACE = icons.trace,
  },
  stages = 'slide',
  background_colour = require('sacr3d.theme.colors').bg,
}, config.notify or {}))

vim.notify = require('notify')

require('sacr3d.plugins.notify.highlights')
