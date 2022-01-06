local map = require('sacr3d.utils').map

-- session
map('n', '<leader>sl', '<cmd>silent RestoreSession<cr>')
map('n', '<leader>ss', '<cmd>SaveSession<cr>')
map(
  'n',
  '<leader>si',
  '<cmd>lua require("sacr3d.utils.logger"):log("Session name: " .. require("auto-session-library").current_session_name())<cr>'
)
