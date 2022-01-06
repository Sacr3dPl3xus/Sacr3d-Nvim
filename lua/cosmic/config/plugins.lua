-- Add additional plugins as well as disable some core plugins

local plugins = {
  add = {
    --->> Vim-Sandwich
    'machakann/vim-sandwich',
    --->> Autopairs
    'windwp/nvim-autopairs',
    --->> Formatter
    'sbdchd/neoformat',
    --->> VimWiki
    {
      'vimwiki/vimwiki',
      config = function()
        require('cosmic.plugins.vim-wiki')
      end,
    },
    --->> Smooth Scroll
    {
      'karb94/neoscroll.nvim',
      config = function()
        require('cosmic.plugins.neoscroll')
        -- require('cosmic.modules.neoscroll')
      end,
    },
    --->> Vim-Repeat
    'tpope/vim-repeat',
    --->> Cursor Effects
    {
      'edluffy/specs.nvim',
      config = function()
        require('cosmic.plugins.specs-nvim')
        -- require('cosmic.modules.specs-nvim')
      end,
    },
    --->> Neo-Trer
    -- {
    --   'nvim-neo-tree/neo-tree.nvim',
    --   branch = 'v1.x',
    --   requires = { 'MunifTanjim/nui.nvim' },
    --   config = function()
    --     require('cosmic.config.neotree')
    --     -- require('neo-tree').setup()
    --     -- vim.cmd([[nnoremap \ :lua require("neo-tree").show()<cr>]])
    --   end,
    -- },
    --->> SearchBox
    {
      'VonHeikemen/searchbox.nvim',
      config = function()
        require('cosmic.plugins.search-box')
        -- require('cosmic.modules.search-box')
      end,
      requires = {
        { 'MunifTanjim/nui.nvim' },
      },
    },
    --->> Title & Frame (With treesitter support)
    {
      's1n7ax/nvim-comment-frame',
      config = function()
        require('cosmic.plugins.nvimframe')
        -- require('cosmic.modules.nvimframe')
      end,
      requires = 'nvim-treesitter',
    },
    --->> LightSpeed
    --[[ 'ggandor/lightspeed.nvim',
    {
      'romgrk/barbar.nvim',
      requires = { 'kyazdani42/nvim-web-devicons' },
    }, ]]
  },

  disable = { -- disabling some core plugins may mean you'll have to remap some keybindings

    'gitsigns',
    -- 'Comment.nvim',
    -- 'auto-session',
    -- 'autocomplete',
    -- 'colorizer',
    -- 'dashboard',
    -- 'fugitive',
    -- 'nvim-tree',
    -- 'statusline',
    -- 'telescope',
    -- 'terminal',
    -- 'theme',
    -- 'todo-comments',
    -- 'treesitter',
  },
}

return plugins
