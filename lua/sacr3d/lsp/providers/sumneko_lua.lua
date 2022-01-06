local sumneko_install_path = vim.fn.stdpath('data') .. '/lsp_servers/sumneko_lua/extension/server'
local sumneko_binary = sumneko_install_path .. '/bin/Linux/lua-language-server'

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

--=>> Sumneko_Lua <<=-
return {
  cmd = { sumneko_binary, '-E', sumneko_install_path .. '/main.lua' },
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
          [vim.fn.stdpath('config') .. '/lua'] = true,
        },
        maxPreload = 10000,
      },
    },
  },
}

-- return {
--   settings = {
--     Lua = {
--       diagnostics = {
--         -- Get the language server to recognize the `vim` global
--         globals = { 'vim' },
--       },
--       workspace = {
--         -- Make the server aware of Neovim runtime files
--         library = {
--           [vim.fn.expand('$VIMRUNTIME/lua')] = true,
--           [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
--           [vim.fn.stdpath('config') .. '/lua'] = true,
--         },
--         maxPreload = 10000,
--       },
--     },
--   },
-- }
