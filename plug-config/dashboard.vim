let g:dashboard_default_executive ='telescope'

let g:dashboard_custom_section={
  \ 'find_file': {
      \ 'description':           ['  Open file                            SPC s f'],
      \ 'command':               ':call v:lua.require("telescope.builtin").find_files()',
      \ },
  \ 'file_browser': {
      \ 'description':           ['  Browse files                         SPC s e'],
      \ 'command':               ':call v:lua.require("telescope.builtin").file_browser()',
      \ },
  \ 'file_history': {
      \ 'description':           ['  Recently opened files                SPC s w'],
      \ 'command':               ':call v:lua.require("telescope.builtin").oldfiles()',
      \ },
  \ 'find_word': {
      \ 'description':           ['  Search word                          SPC s t'],
      \ 'command':               ':call v:lua.require("telescope.builtin").oldfiles()',
      \ },
  \ }
