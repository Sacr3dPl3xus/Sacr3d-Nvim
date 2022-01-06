-->>{{{ Helpers
-- Add additional keymaps or disable existing ones
-- To view maps set, use `:Telescope keymaps`
-- or `:map`, `:map <leader>`

local cmd = vim.cmd
local unset = vim.api.nvim_del_keymap
local map = require('sacr3d.utils').map
--}}}

--{{{>> Smart, Smooth, Sane Keymap
map('n', '<leader>q', ':bd!<cr>', { noremap = true, silent = true })
map('n', '<Tab>', ':bn<cr>', { noremap = true, silent = true })
map('n', '<space><space>', 'za', { noremap = true, silent = true })
--}}}

--{{{>> Telescope
map('n', '<leader>fe', ':Telescope file_browser hidden=true<cr>', { noremap = true, silent = true })
map('n', '<leader>fp', ':lua require("sacr3d.modules.telescope.mappings").project_files() hidden=true<cr>')
map('n', '<leader>ff', ':Telescope find_files hidden=true<cr>')
map('n', '<leader>fb', ':Telescope buffers<cr>')
map('n', '<leader>fg', ':Telescope live_grep<cr>')
--}}}

--{{{>> Nvim-Tree
map('n', '<leader>e', ':NvimTreeToggle<CR>')
map('n', '<leader>r', ':NvimTreeRefresh<CR>')
map('n', '<C-n>', ':NvimTreeToggle<CR>')
--}}}

--{{{>> Comment
map(
  'n',
  '<Space>/',
  "<Cmd>lua require('Comment.api').call('toggle_current_linewise_op')<CR>g@$",
  { noremap = true, silent = true }
)
map(
  'n',
  '<M-/>',
  "<Cmd>lua require('Comment.api').call('toggle_current_blockwise_op')<CR>g@$",
  { noremap = true, silent = true }
)
map(
  'v',
  '<Space>/',
  "<Cmd>lua require('Comment.api').call('toggle_linewise_op')<CR>g@",
  { noremap = true, silent = true }
)
map(
  'v',
  '<M-/>',
  "<Cmd>lua require('Comment.api').call('toggle_blockwise_op')<CR>g@",
  { noremap = true, silent = true }
)
--}}}

--{{{>> Colorizer
map('n', '<leader>.', ':ColorizerToggle<cr>', { noremap = true, silent = true })
--}}}

-- vim: foldmethod=marker:
