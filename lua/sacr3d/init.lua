local mods = {
  'sacr3d.compiled',
  'sacr3d.core',
  'sacr3d.theme',
}

for _, mod in ipairs(mods) do
  local ok, err = pcall(require, mod)
  if mod == 'sacr3d.compiled' and not ok then
    vim.notify('Run :PackerCompile!', vim.log.levels.WARN, {
      title = 'Sacr3dNvim',
    })
  elseif not ok and not mod:find('sacr3d.config') then
    error(('Error loading %s...\n\n%s'):format(mod, err))
  end
end
