local map = require('sacr3d.utils').map

map('n', '<space><Enter>', ':FloatermToggle<CR>')
map('t', '<Esc>', [[<C-\><C-n>]])
map('t', '<C-w>l', [[<C-\><C-n>:FloatermNext<CR>]])
map('t', '<C-w>h', [[<C-\><C-n>:FloatermPrev<CR>]])
map('t', '<C-w>n', [[<C-\><C-n>:FloatermNew<CR>]])
map('t', '<space><Enter>', [[<C-\><C-n>:FloatermKill<CR>]])
