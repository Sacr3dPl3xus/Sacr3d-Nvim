local config = require('sacr3d.config')
local utils = require('sacr3d.utils')

require('lsp_signature').setup(utils.merge({
  bind = true, -- This is mandatory, otherwise border config won't get registered.
  handler_opts = {
    border = config.border,
  },
}, config.lsp_signature or {}))
