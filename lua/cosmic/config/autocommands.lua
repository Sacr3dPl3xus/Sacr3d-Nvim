-- local cmd = vim.cmd

vim.cmd(
  [[
command! Diary 2VimwikiDiaryIndex
augroup vimwikigroup
    autocmd!
    " automatically update links on read diary
    autocmd BufEnter,BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end
]],
  false
)

vim.cmd(
  [[
command! NewDiary 2VimwikiMakeDiaryNote
augroup vimwikigroup2
    autocmd!
    autocmd BufNewFile * set conceallevel=3
augroup end
]],
  false
)

vim.cmd(
  [[
command! TODO e ~/vimwiki/TODO/index.wiki
augroup vimwikigroup3
    autocmd!
    " automatically update links on read diary
    autocmd BufRead,BufNewFile index.wiki set conceallevel=3
augroup end
]],
  false
)

