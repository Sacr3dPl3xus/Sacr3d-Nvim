local icons = require('sacr3d.theme.icons')
local g = vim.g

g.dashboard_custom_header = {
  '',
  '',
  '',
	' 											 SACR3D-NVIM 						  					',
	'┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┑',
	'│..:s+oy..mmmmdmmmNNmNd::yNm/-syy:.ymmymmNdsmNmNmmmmhys+:.│',
	'│  --`:/sssoo+++ssyshdh:`/ydddmhy..odmoysyo+++oooo+:..-.  │',
	'│`  ``:://+/-`````-::s+/-.sdmmmy+.:/s+--.`.``.//////-.```.│',
	'│`   ``.-/:+: .+sys+/-:++.-smmd/`/o+-:/syod.  /:://..` ``.│',
	'│   `  .:+/:-..`-oyo/.-:-`-dmmmo`.::.-+oso.`..:/s+:``.`   │',
	'│-```  `..--.oyso++++/:+//odmmmso:+/:+o++osys+oso:- `..:-.│',
	'│.`     `.--:yhhdhyhyysoooyoNNdoyo+osyhyyhhhyyo++-.    .-:│',
	'│    `  ` `.-oyyyhsymmdh-osommyoo++ddmdsyyyyss/-`    `    │',
	'│`    `````` `-+yysyhmmd:+yyNNhyo+ymmdhyoys+:-` `````   ``│',
	'│.-//:-..`      :ossshmmy/yydmyys+mmdoyooy/`     `-.---:/+│',
	'│.-::/oso+/-.```..:/:oydy:::///:/+hds////:.```.:/+oso++o+/│',
	'│  ``..--::/:---.` -:+++:.``   ``-:+o:/-``.::://oo+/:..`` │',
	'│      `````..--:.  :/+ooo/.``.:/soo//- ./+oo+-``.``      │',
	'┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┙',
}

-- g.dashboard_custom_header = {
--   '',
--   '',
--   '',
--   '',
--   '',
--   '',
--   ' ██████╗ ██████╗ ███████╗███╗   ███╗██╗ ██████╗███╗   ██╗██╗   ██╗██╗███╗   ███╗',
--   '██╔════╝██╔═══██╗██╔════╝████╗ ████║██║██╔════╝████╗  ██║██║   ██║██║████╗ ████║',
--   '██║     ██║   ██║███████╗██╔████╔██║██║██║     ██╔██╗ ██║██║   ██║██║██╔████╔██║',
--   '██║     ██║   ██║╚════██║██║╚██╔╝██║██║██║     ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
--   '╚██████╗╚██████╔╝███████║██║ ╚═╝ ██║██║╚██████╗██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
--   ' ╚═════╝ ╚═════╝ ╚══════╝╚═╝     ╚═╝╚═╝ ╚═════╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
--   '',
--   '',
--   '',
-- }

g.dashboard_default_executive = 'telescope'

g.dashboard_session_directory = vim.fn.stdpath('data') .. '/sessions'

g.dashboard_custom_section = {
  file_explorer = {
    description = { icons.file2 .. ' File Manager        <leader>e ' },
    command = 'NvimTreeToggle',
  },
  find_file = {
    description = { icons.file1 .. ' Find File           <leader>ff' },
    command = 'Telescope find_files',
  },
  find_string = {
    description = { icons.word .. ' Grep String         <leader>fs' },
    command = 'Telescope grep_string',
  },
  last_session = {
    description = { icons.clock .. ' Load Session        <leader>sl' },
    command = 'lua vim.cmd(":silent RestoreSession")',
  },
  zexit = {
    description = { 'Exit' },
    command = 'lua vim.cmd(":q")',
  },
}

g.dashboard_custom_footer = { '💀 github.com/s4cr3dpl3xu5/Sacr3d-Nvim 💀' }
