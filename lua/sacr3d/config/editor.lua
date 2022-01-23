-- Override Cosmic editor options

local g = vim.g
local map = require('sacr3d.utils').map
local opt = vim.opt
local cmd = vim.cmd

cmd([[
	filetype plugin indent on
	autocmd BufWritePre * :%s/\s\+$//e
]])

-- Default leader is <space>
g.mapleader = ','

opt.backspace = { 'eol', 'start', 'indent' }
opt.clipboard = 'unnamedplus'
opt.encoding = 'utf-8'
opt.matchpairs = { '(:)', '{:}', '[:]', '<:>' }
opt.syntax = 'enable'

-- Default indent = 2
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4
opt.autoindent = true
opt.expandtab = true
opt.smartindent = true

-- search
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
-- opt.wildignore = opt.wildignore + { '*/node_modules/*', '*/.git/*', '*/vendor/*' }
opt.wildmenu = true

-- ui
opt.cursorline = true
opt.laststatus = 2
opt.lazyredraw = true
opt.list = true
opt.listchars = {
  tab = '❘-',
  trail = '·',
  lead = '·',
  extends = '»',
  precedes = '«',
  nbsp = '×',
}
opt.mouse = 'a'
opt.number = true
opt.rnu = true
opt.scrolloff = 18
opt.showmode = false
opt.sidescrolloff = 13 -- Lines to scroll horizontally
opt.signcolumn = 'yes'
opt.splitbelow = true -- Open new split below
opt.splitright = true -- Open new split to the right
opt.wrap = false

-- backups
opt.backup = false
opt.swapfile = false
opt.writebackup = false

-- autocomplete
opt.completeopt = { 'menu', 'menuone', 'noselect' }
opt.shortmess = opt.shortmess + { c = true }

-- perfomance
opt.redrawtime = 1500
opt.timeoutlen = 250
opt.ttimeoutlen = 10
opt.updatetime = 100

-- theme
opt.termguicolors = true

-- Add additional keymaps or disable existing ones
-- To view maps set, use `:Telescope keymaps`
-- or `:map`, `:map <leader>`

-- Example: Additional insert mapping:
-- map('i', 'jj', '<esc>', { noremap = true, silent = true })

-- Mapping options:
-- map('n', ...)
-- map('v', ...)
-- map('i', ...)
-- map('t', ...)

-- Example: Disable find files keymap
-- local cmd = vim.cmd
-- cmd('unmap <leader>f')
