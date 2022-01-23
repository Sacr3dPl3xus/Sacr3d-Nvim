--{{{>> Helpers
-- Add additional keymaps or disable existing ones
-- To view maps set, use `:Telescope keymaps`
-- or `:map`, `:map <leader>`

-- local cmd = vim.cmd
-- local unset = vim.api.nvim_del_keymap
local map = require('sacr3d.utils').map
--}}}

--{{{>> GENERAL
---------------
--> Buffer
map('n', '<space>q', ':bd!<cr>', { noremap = true, silent = true })
map('n', '<Tab>', ':bn<cr>', { noremap = true, silent = true })

--> Folding
map('n', '<space><space>', 'za', { noremap = true, silent = true })

--> Join line and keep cursor at center.
map('n', 'J', "mzJ'z", { noremap = true })
--> Reverse Join ('J')
-- map('n', '<C-Down>', 'ddkPJ')

--> Move selected line / block of text in visual mode.
map('x', '<S-Up>', ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
map('x', '<S-Down>', ":move '>+1<CR>gv-gv", { noremap = true, silent = true })
map('i', '<C-Up>', '<esc>:m .-2<CR>==i')
map('i', '<C-Down>', '<esc>:m .+1<CR>==i')

--> Toggle highlight search.
map('n', '<M-.>', ':set hlsearch!<CR>', { noremap = true, silent = true })

--> Save
map('n', '<C-s>', ':w<cr> | :echo "Saaaveed!!"<cr>', { noremap = true, silent = true })

--> Save & Reload.
map('n', '<M-\\>', ':w <CR> | :Sacr3dReloadSync<CR> | :echo "Sync & Reloaded"<CR>', { noremap = true, silent = true })
map('n', '<M-Enter>', ':w <CR> | :Sacr3dReload<CR> | :echo "Saved & Reloaded"<CR>', { noremap = true, silent = true })

--> Another <ESC>.
map('i', '<C-c>', '<esc>', { noremap = true, silent = true })

--> Substitute
-- map('n', '<M-r>', ':call <SID>better_sub()<CR>', { noremap = true})
map('n', '<M-r>', ':%s/<C-R><C-W>/<C-R>0/gc<CR>', { noremap = true})

-- Search and Replace
map('n', '<M-e>', '<esc><esc>:%s///gcI<left><left><left><left><left>')

--> Move to the last letter on the line
-- map('n', '<M-Right>', '$', { noremap = true})
--> Move to the first letter on the line
-- map('n', '<M-Left>', '^', { noremap = true})

--}}}

--{{{>> YANK & PASTE
--------------------
--> Prevent x from overriding what's in the clipboard.
map('n', 'x', '"_x', { noremap = true, silent = true })
map('n', 'X', '"_x', { noremap = true, silent = true })

--> Prevent select & paste from overwriting originally copied.
map('x', 'p', 'pgvy', { noremap = true, silent = true })

--> Keep cursor at the bottom after you yank it.
map('v', 'y', 'ygv<esc>', { noremap = true, silent = true })

--> Yank from cursor to the end of the line.
map('n', 'Y', 'y$', { noremap = true })
map('i', '<C-y>', '<esc>y$a', { noremap = true })

--> Clipboard Yanker.
map('n', '<leader>Y', ':%y+<CR>', { noremap = true }) -- Copy content of entire buffer to system clipboard
map('n', '<leader>y', '"+yy', { noremap = true }) -- yank current line into system clipboard
map('v', '<leader>y', '"+y', { noremap = true }) -- yank current line into system clipboard

--> Copies/Moves selected text to next split
map('v', '<F3>', 'y<c-w>wp<c-w>gv')
map('v', '<F4>', 'd<c-w>wp<c-w>gv')

--> Turns off line numbers
map('n', '<F3>', ':set invnumber invrelativenumber<CR>')

--> Place semi-colon at EOL
-- map('i', ';;', '<Esc>A;<Esc>')
--}}}

--{{{>> LINE MANIPULATIONS
------------------------------
--> Better indenting.
map('v', '<', '<gv', { noremap = true, silent = true })
map('v', '>', '>gv', { noremap = true, silent = true })
map('v', '<Tab>', '>gv|', { noremap = true, silent = true })
map('v', '<S-Tab>', '<gv', { noremap = true, silent = true })
-- map('n', '<Tab>', '>>_', { noremap = true, silent = true })
-- map('n', '<S-Tab>', '<<_', { noremap = true, silent = true })
--}}}

--{{{>> BUFFER & WINDOW
-----------------------
--> Buffer
map('n', '<leader>q', ':bd<CR>', { noremap = true, silent = true })
map('n', '<Tab>', ':bn <CR>', { noremap = true, silent = true })
map('n', '<M-0>', ':bn <CR>', { noremap = true, silent = true })
map('n', '<M-9>', ':bp <CR>', { noremap = true, silent = true })

--> Window
map('n', '<C-Left>', '<C-w>h')
map('n', '<C-Down>', '<C-w>j')
map('n', '<C-Up>', '<C-w>k')
map('n', '<C-Right>', '<C-w>l')

-- map('n', '<C-Left>', ':wincmd h<CR>', { noremap = true, silent = true })
-- map('n', '<C-Down>', ':wincmd j<CR>', { noremap = true, silent = true })
-- map('n', '<C-Up>', ':wincmd k<CR>', { noremap = true, silent = true })
-- map('n', '<C-Right>', ':wincmd l<CR>', { noremap = true, silent = true })
--}}}

--{{{>> PLUGINS
---------------
--> VimWiki
map('n', '<leader>w', ':1VimwikiIndex<CR>', { noremap = true, silent = true })
map('n', '2<leader>w', ':2VimwikiIndex<CR>', { noremap = true, silent = true })
map('n', '<leader><Down>', ':VimwikiNextLink<CR>', { noremap = true, silent = true })
map('n', '<leader><Up>', ':VimwikiPrevLink<CR>', { noremap = true, silent = true })

--> Telescope
map('n', '<space>fp', ':lua require("sacr3d.plugins.telescope.mappings").project_files() hidden=true<cr>')
map('n', '<space>ff', ':Telescope find_files hidden=true<cr>')
map('n', '<space>fb', ':Telescope buffers<cr>')
map('n', '<space>fg', ':Telescope live_grep<cr>')

--> Nvim-Tree
map('n', '<space>e', ':NvimTreeToggle<CR>')
map('n', '<space>r', ':NvimTreeRefresh<CR>')
map('n', '<C-n>', ':NvimTreeToggle<CR>')

--> Comment
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

--> Colorizer
map('n', '<space>.', ':ColorizerToggle<cr>', { noremap = true, silent = true })

--> SpecsNvim
--> Go to next search with cursor effect
map('n', 'n', 'nzzzv:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
map('n', 'N', 'Nzzzv:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
--}}}

-- vim: foldmethod=marker:
