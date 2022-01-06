vim.cmd([[
  command! Sacr3dUpdate lua require('sacr3d.utils').update()
  command! Sacr3dReload lua require('sacr3d.utils').reload_user_config(true)
  command! Sacr3dReloadSync lua require('sacr3d.utils').reload_user_config_sync()
  command! LspFormat lua vim.lsp.buf.formatting()

  augroup Sacr3d_Auto_Resize
    autocmd!
    autocmd VimResized * tabdo wincmd =
  augroup end
]])
