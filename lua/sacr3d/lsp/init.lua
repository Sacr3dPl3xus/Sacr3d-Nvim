local config = require('sacr3d.config')

-- set up lsp servers
require('sacr3d.lsp.providers')
require('sacr3d.lsp.diagnostics')

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = config.border,
})

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = config.border,
})
