local map = require('sacr3d.utils').map
local user_plugins = require('sacr3d.config')

-- Mappings for plugins that need to be lazy loaded
if not vim.tbl_contains(user_plugins.disable_builtin_plugins, 'nvim-tree') then
  require('sacr3d.plugins.nvim-tree.mappings')
end

if not vim.tbl_contains(user_plugins.disable_builtin_plugins, 'auto-session') then
  require('sacr3d.plugins.auto-session.mappings')
end

-- Quickfix mappings
map('n', '<leader>ck', ':cexpr []<cr>')
map('n', '<leader>cc', ':cclose <cr>')
map('n', '<leader>co', ':copen <cr>')
map('n', '<leader>cf', ':cfdo %s/')
map('n', '<leader>cp', ':cprev<cr>zz')
map('n', '<leader>cn', ':cnext<cr>zz')

-- buffer navigation
-- map('n', '<leader>bp', ':bprev<cr>')
-- map('n', '<leader>bn', ':bnext<cr>')
-- map('n', '<leader>bd', ':bdelete<cr>')
--
-- -- tab navigation
-- map('n', '<leader>tp', ':tabprevious<cr>')
-- map('n', '<leader>tn', ':tabnext<cr>')
-- map('n', '<leader>td', ':tabclose<cr>')
--
-- -- resize with arrows
-- map('n', '<C-Up>', ':resize -2<CR>')
-- map('n', '<C-Down>', ':resize +2<CR>')
-- map('n', '<C-Left>', ':vertical resize -2<CR>')
-- map('n', '<C-Right>', ':vertical resize +2<CR>')
