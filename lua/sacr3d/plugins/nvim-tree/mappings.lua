-->> Nvim-Tree keybinds
local map = require('sacr3d.utils').map

map('n', '<leader>e', ':NvimTreeToggle<CR>')
map('n', '<leader>r', ':NvimTreeRefresh<CR>')
map('n', '<C-n>', ':NvimTreeToggle<CR>')
