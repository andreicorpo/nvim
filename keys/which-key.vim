" Leader Key Maps
let @s = 'veS"'

" Timeout
let g:which_key_timeout = 0

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" let g:which_key_position = 'botright'
" let g:which_key_position = 'topleft'
" let g:which_key_vertical = 1

" Change the colors if you want

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['/'] = [ ':call Comment()'                                             , 'Comment' ]
let g:which_key_map['.'] = [ ':e $MYVIMRC'                                                 , 'open init' ]
let g:which_key_map[';'] = [ ':Commands'                                                   , 'Commands' ]
let g:which_key_map['='] = [ '<C-W>='                                                      , 'balance windows' ]
let g:which_key_map['e'] = [ ':NvimTreeToggle'                                             , 'Explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                                                      , 'Split below']
let g:which_key_map['n'] = [ ':let @/ = ""'                                                , 'No highlight' ]
let g:which_key_map['o'] = [ ':RnvimrToggle'                                               , 'Open ranger' ]
let g:which_key_map['p'] = [ ':call v:lua.require("telescope.builtin").find_files()'       , 'Search files' ]
" TODO fix this
" let g:which_key_map['q'] = [ ':q'                                              , 'quit' ]
let g:which_key_map['T'] = [ ':TSHighlightCapturesUnderCursor'                             , 'Treesitter highlight' ]
let g:which_key_map['u'] = [ ':UndotreeToggle'                                             , 'Undo tree']
let g:which_key_map['v'] = [ '<C-W>v'                                                      , 'Split right']
let g:which_key_map['W'] = [ ':call WindowSwap#EasyWindowSwap()'                           , 'Move window' ]
let g:which_key_map['z'] = [ 'Goyo'                                                        , 'Zen' ]

" Group mappings

" q is for quitting
let g:which_key_map.q = {
      \ 'name' : '+ File quit' ,
      \ 'q' : [':q'                      , 'Quit'],
      \ 'd' : [':q!'                     , 'Discard and quit'],
      \ 'a' : [':qa'                     , 'Quit all'],
      \ }

" w is for saving
let g:which_key_map.w = {
      \ 'name' : '+ File write' ,
      \ 'w' : [':w'                      , 'Save file'],
      \ 'a' : [':wa'                     , 'Save all files'],
      \ 's' : [':noa w'                  , 'Writer w/o formatting'],
      \ }

" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'c' : [':ColorizerToggle'        , 'colorizer'],
      \ 'e' : [':CocCommand explorer'    , 'Explorer'],
      \ 'h' : [':let @/ = ""'            , 'remove search highlight'],
      \ 'l' : [':Bracey'                 , 'start live server'],
      \ 'L' : [':BraceyStop'             , 'stop live server'],
      \ 'm' : [':MarkdownPreview'        , 'markdown preview'],
      \ 'M' : [':MarkdownPreviewStop'    , 'markdown preview stop'],
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 's' : [':s/\%V\(.*\)\%V/"\1"/'   , 'surround'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 't' : [':FloatermToggle'         , 'terminal'],
      \ 'v' : [':Codi'                   , 'virtual repl on'],
      \ 'V' : [':Codi!'                  , 'virtual repl off'],
      \ 'w' : [':StripWhitespace'        , 'strip whitespace'],
      \ }

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '>' : [':BufferMoveNext'        , 'move next'],
      \ '<' : [':BufferMovePrevious'    , 'move prev'],
      \ '1' : [':BufferGoto 1'          , 'buffer 1'],
      \ '2' : [':BufferGoto 2'          , 'buffer 2'],
      \ '3' : [':BufferGoto 3'          , 'buffer 3'],
      \ '4' : [':BufferGoto 4'          , 'buffer 4'],
      \ '5' : [':BufferGoto 5'          , 'buffer 5'],
      \ '6' : [':BufferGoto 6'          , 'buffer 6'],
      \ '7' : [':BufferGoto 7'          , 'buffer 7'],
      \ '8' : [':BufferGoto 8'          , 'buffer 8'],
      \ '9' : [':BufferGoto 9'          , 'buffer 9'],
      \ '0' : [':BufferGoto 0'          , 'buffer 0'],
      \ 'b' : [':BufferPick'            , 'pick buffer'],
      \ 'd' : [':Bdelete'               , 'delete-buffer'],
      \ 'D' : [':BufferOrderByDirectory', 'order by directory'],
      \ 'f' : ['bfirst'                 , 'first-buffer'],
      \ 'l' : ['blast'                  , 'last buffer'],
      \ 'L' : [':BufferOrderByLanguage' , 'order by language'],
      \ 'n' : ['bnext'                  , 'next-buffer'],
      \ 'p' : ['bprevious'              , 'previous-buffer'],
      \ '?' : ['Buffers'                , 'fzf-buffer'],
      \ }

" d is for debug
let g:which_key_map.d = {
      \ 'name' : '+debug' ,
      \ 'b' : ['<Plug>VimspectorToggleBreakpoint'              , 'breakpoint'],
      \ 'B' : ['<Plug>VimspectorToggleConditionalBreakpoint'   , 'conditional breakpoint'],
      \ 'c' : ['<Plug>VimspectorRunToCursor'                   , 'run to cursor'],
      \ 'd' : ['<Plug>VimspectorContinue'                      , 'continue'],
      \ 'f' : ['<Plug>VimspectorAddFunctionBreakpoint'         , 'function breakpoint'],
      \ 'm' : [':MaximizerToggle'                              , 'maximize window'],
      \ 'o' : ['<Plug>VimspectorStepOver'                      , 'step over'],
      \ 'O' : ['<Plug>VimspectorStepOut'                       , 'step out'],
      \ 'i' : ['<Plug>VimspectorStepInto'                      , 'step into'],
      \ 'p' : ['<Plug>VimspectorPause'                         , 'pause'],
      \ 'r' : ['<Plug>VimspectorRestart'                       , 'restart'],
      \ 's' : ['<Plug>VimspectorStop'                          , 'stop'],
      \ }

" F is for fold
let g:which_key_map.F = {
    \ 'name': '+ Fold',
    \ 'O' : [':set foldlevel=20', 'Open all'],
    \ 'C' : [':set foldlevel=0', 'Close all'],
    \ 'c' : [':foldclose', 'Close'],
    \ 'o' : [':foldopen', 'Open'],
    \ '1' : [':set foldlevel=1', 'Level1'],
    \ '2' : [':set foldlevel=2', 'Level2'],
    \ '3' : [':set foldlevel=3', 'Level3'],
    \ '4' : [':set foldlevel=4', 'Level4'],
    \ '5' : [':set foldlevel=5', 'Level5'],
    \ '6' : [':set foldlevel=6', 'Level6']
    \ }

" f is for find and replace
      " \ 'f' : [':Farr'                     , 'file'],
let g:which_key_map.f = {
      \ 'name' : '+ Find & replace' ,
      \ 'f' : [':Farr --source=vimgrep'    , 'File'],
      \ 'p' : [':Farr --source=rgnvim'     , 'Project'],
      \ }

" command! -buffer JdtCompile lua require('jdtls').compile()
" command! -buffer JdtUpdateConfig lua require('jdtls').update_project_config()
" command! -buffer JdtJol lua require('jdtls').jol()
" command! -buffer JdtBytecode lua require('jdtls').javap()
" command! -buffer JdtJshell lua require('jdtls').jshell()

" j is for java
" let g:which_key_map.j = {
      " \ 'name' : '+java' ,
      " \ 'c' : [':AsyncTask file-compile'      , 'compile file'],
      " \ 'b' : [':AsyncTask project-build'     , 'build project'],
      " \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
      " \ 'f' : [':AsyncTaskFzf'                , 'find task'],
      " \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
      " \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
      " \ 'l' : [':CocList tasks'               , 'list tasks'],
      " \ 'm' : [':AsyncTaskMacro'              , 'macro help'],
      " \ 'o' : [':copen'                       , 'open task view'],
      " \ 'r' : [':AsyncTask file-run'          , 'run file'],
      " \ 'p' : [':AsyncTask project-run'       , 'run project'],
      " \ 'x' : [':cclose'                      , 'close task view'],
      " \ }

" k is for task
" let g:which_key_map.k = {
"       \ 'name' : '+task' ,
"       \ 'c' : [':AsyncTask file-compile'      , 'compile file'],
"       \ 'b' : [':AsyncTask project-build'     , 'build project'],
"       \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
"       \ 'f' : [':AsyncTaskFzf'                , 'find task'],
"       \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
"       \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
"       \ 'm' : [':AsyncTaskMacro'              , 'macro help'],
"       \ 'o' : [':copen'                       , 'open task view'],
"       \ 'r' : [':AsyncTask file-run'          , 'run file'],
"       \ 'p' : [':AsyncTask project-run'       , 'run project'],
"       \ 'x' : [':cclose'                      , 'close task view'],
"       \ }
      " \ 'l' : [':AsyncTaskList'               , 'list tasks'],

" m is for mark
" let g:which_key_map.m = {
"       \ 'name' : '+mark' ,
"       \ 'c' : [':CocCommand bookmark.clearForCurrentFile', 'clear file'],
"       \ 'C' : [':CocCommand bookmark.clearForAllFiles', 'clear project'],
"       \ 'j' : [':CocCommand bookmark.next', 'next bookmark'],
"       \ 'k' : [':CocCommand bookmark.prev', 'prev bookmark'],
"       \ 't' : [':CocCommand bookmark.toggle', 'toggle bookmark'],
"       \ }
      " CoC throws an error
      " \ 'a' : [':CocCommand bookmark.annotate', 'annotate bookmark'],

let g:which_key_map.s = {
      \ 'name' : '+ Search' ,
      \ ';' : [':call v:lua.require("telescope.builtin").commands()'                                          , 'Commands'],
      \ 'a' : [':call v:lua.require("telescope.builtin").lsp_code_actions()'                                  , 'Code actions'],
      \ 'b' : [':call v:lua.require("telescope.builtin").buffers()'                                           , 'Buffers'],
      \ 'B' : [':call v:lua.require("telescope.builtin").git_branches()'                                      , 'Git branches'],
      \ 'd' : [':call v:lua.require("telescope.builtin").lsp_document_diagnostics()'                          , 'Document diagnostics'],
      \ 'D' : [':call v:lua.require("telescope.builtin").lsp_workspace_diagnostics()'                         , 'Workspace diagnostics'],
      \ 'f' : [':call v:lua.require("telescope.builtin").find_files()'                                        , 'Search files'],
      \ 'w' : [':call v:lua.require("telescope.builtin").oldfiles()'                                          , 'Files history'],
      \ 'e' : [':call v:lua.require("telescope.builtin").file_browser()'                                      , 'Browse files'],
      \ 'h' : [':call v:lua.require("telescope.builtin").command_history()'                                   , 'Cmd history'],
      \ 'k' : [':call v:lua.require("telescope.builtin").keymaps()'                                           , 'Keymaps'],
      \ 'P' : [':call v:lua.require("telescope.builtin").spell_suggest()'                                     , 'Spell suggest'],
      \ 'S' : [':call v:lua.require("telescope.builtin").grep_string()'                                       , 'Search word'],
      \ 't' : [':call v:lua.require("telescope.builtin").live_grep()'                                         , 'Search text'],
      \ 'z' : [':call v:lua.require("telescope.builtin").current_buffer_fuzzy_find()'                         , 'Search buffer'],
      \ }

let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'l' : [':SLoad'           , 'Load Session']     ,
      \ 's' : [':Startify'        , 'Start Page']     ,
      \ 'S' : [':SSave'           , 'Save Session']   ,
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':CocCommand fzf-preview.GitStatus' , 'actions'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'i' : [':Gist -b'                          , 'post gist'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'm' : ['<Plug>(git-messenger)'             , 'message'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 'S' : [':CocCommand fzf-preview.GitStatus' , 'status'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }
      " \ 'A' : [':Git add %'                        , 'add current'],
      " \ 'S' : [':!git status'                      , 'status'],

let g:which_key_map.G = {
      \ 'name' : '+gist' ,
      \ 'a' : [':Gist -a'                          , 'post gist anon'],
      \ 'b' : [':Gist -b'                          , 'post gist browser'],
      \ 'd' : [':Gist -d'                          , 'delete gist'],
      \ 'e' : [':Gist -e'                          , 'edit gist'],
      \ 'l' : [':Gist -l'                          , 'list public gists'],
      \ 's' : [':Gist -ls'                         , 'list starred gists'],
      \ 'm' : [':Gist -m'                          , 'post gist all buffers'],
      \ 'p' : [':Gist -P'                          , 'post public gist '],
      \ 'P' : [':Gist -p'                          , 'post private gist '],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'a' : [':Lspsaga code_action'                , 'quickfix'],
      \ 'A' : [':Lspsaga range_code_action'          , 'selected action'],
      \ 'd' : [':Telescope lsp_document_diagnostics' , 'document diagnostics'],
      \ 'D' : [':Telescope lsp_workspace_diagnostics', 'workspace diagnostics'],
      \ 'f' : [':LspFormatting'                      , 'format'],
      \ 'H' : [':Lspsaga signature_help'             , 'signature_help'],
      \ 'I' : [':LspInfo'                            , 'lsp_info'],
      \ 'l' : [':Lspsaga lsp_finder'                 , 'lsp_finder'],
      \ 'L' : [':Lspsaga show_line_diagnostics'      , 'line_diagnostics'],
      \ 'o' : [':Vista!!'                            , 'outline'],
      \ 'p' : [':Lspsaga preview_definition'         , 'preview definition'],
      \ 'q' : [':Telescope quickfix'                 , 'quickfix'],
      \ 'r' : [':LspRename'                          , 'rename'],
      \ 'T' : [':LspTypeDefinition'                  , 'type defintion'],
      \ 'x' : [':cclose'                             , 'close quickfix'],
      \ 's' : [':Telescope lsp_document_symbols'     , 'document symbols'],
      \ 'S' : [':Telescope lsp_workspace_symbols'    , 'workspace symbols'],
      \ }
      " \ 'D' : [':LspDeclaration'                     , 'workspace_diagnostics'],
      " \ 'r' : [':Telescope lsp_references'           , 'references'],
      " \ 'p' : [':Lspsaga diagnostic_jump_prev'       , 'prev diagnostic'],
      " \ 'n' : [':Lspsaga diagnostic_jump_next'       , 'next_diagnostic'],
      " \ 'q' : [':Lspsaga code_action'                , 'quickfix'],
      " \ 'i' : [':LspImplementation'                  , 'lsp_info'],
      " \ 'h' : [':Lspsaga hover_doc'                  , 'hover_doc'],
      " \ 'K' : [':LspHover'                           , 'hover'],

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=normal --height=6'       , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'm' : [':FloatermNew lazynpm'                           , 'npm'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ 'u' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ }

call which_key#register('<Space>', "g:which_key_map")
