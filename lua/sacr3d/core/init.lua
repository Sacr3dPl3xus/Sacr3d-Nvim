local sacr3d_modules = {
  'sacr3d.core.disabled',
  'sacr3d.core.pluginsInit',
  'sacr3d.core.commands',
  'sacr3d.core.editor',
  'sacr3d.config.editor',
  'sacr3d.core.mappings',
  'sacr3d.config.mappings',
  'sacr3d.config.autocommands',
}

for _, mod in ipairs(sacr3d_modules) do
  local ok, err = pcall(require, mod)
  if not ok and not mod:find('sacr3d.config') then
    error(('Error loading %s...\n\n%s'):format(mod, err))
  end
end
