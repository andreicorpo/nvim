" Leader Key Maps

" Timeout
let g:which_key_timeout = 0

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆', " ": 'SPC'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

let g:which_key_map =  {}
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

let g:which_key_map[';'] = [ ':Dashboard'                                      , 'Home screen' ]
let g:which_key_map['%'] = [ ':luafile %'                                      , 'Reload file' ]
let g:which_key_map[','] = [ '<Plug>(emmet-expand-abbr)'                       , 'Expand tags' ]
let g:which_key_map['"'] = [ '<Plug>PeekupOpen'                                , 'Registers' ]
let g:which_key_map['?'] = [ ':NvimTreeFindFile'                               , 'Find current file' ]
let g:which_key_map['e'] = [ ':NvimTreeToggle'                                 , 'Explorer' ]
let g:which_key_map['f'] = [ ':Telescope find_files'                           , 'Find files' ]
let g:which_key_map['h'] = [ '<C-W>s'                                          , 'Split below']
let g:which_key_map['n'] = [ ':let @/ = ""'                                    , 'No highlight' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'                                   , 'Ranger' ]
let g:which_key_map['/'] = 'Comment toggle'

" TODO create entire treesitter section
let g:which_key_map['T'] = [ ':TSHighlightCapturesUnderCursor'                 , 'Treesitter highlight' ]
let g:which_key_map['h'] = [ '<C-W>s'                                          , 'split below']
let g:which_key_map['v'] = [ '<C-W>v'                                          , 'Split right']
" TODO play nice with status line
let g:which_key_map['z'] = [ 'Goyo'                                            , 'Zen' ]

" Group mappings

" q is for quitting
let g:which_key_map.q = {
      \ 'name' : '[ File quit ]' ,
      \ 'q' : [':q'                      , 'Quit'],
      \ 'd' : [':q!'                     , 'Discard and quit'],
      \ 'a' : [':qa'                     , 'Quit all'],
      \ }

" w is for saving
let g:which_key_map.w = {
      \ 'name' : '[ File write ]' ,
      \ 'w' : [':w'                      , 'Save file'],
      \ 'W' : [':w!'                     , 'Overwrite file'],
      \ 'a' : [':wa'                     , 'Save all files'],
      \ 's' : [':noa w'                  , 'Writer w/o formatting'],
      \ }

" . is for emmet
let g:which_key_map['.'] = {
      \ 'name' : '[ Emmet ]' ,
      \ ',' : ['<Plug>(emmet-expand-abbr)'               , 'Expand abbr'],
      \ ';' : ['<plug>(emmet-expand-word)'               , 'Expand word'],
      \ 'u' : ['<plug>(emmet-update-tag)'                , 'Update tag'],
      \ 'd' : ['<plug>(emmet-balance-tag-inward)'        , 'Balance tag in'],
      \ 'D' : ['<plug>(emmet-balance-tag-outward)'       , 'Balance tag out'],
      \ 'n' : ['<plug>(emmet-move-next)'                 , 'Move next'],
      \ 'N' : ['<plug>(emmet-move-prev)'                 , 'Move prev'],
      \ 'i' : ['<plug>(emmet-image-size)'                , 'Image size'],
      \ '/' : ['<plug>(emmet-toggle-comment)'            , 'Toggle comment'],
      \ 'j' : ['<plug>(emmet-split-join-tag)'            , 'Split join tag'],
      \ 'k' : ['<plug>(emmet-remove-tag)'                , 'Remove tag'],
      \ 'a' : ['<plug>(emmet-anchorize-url)'             , 'Anchorize url'],
      \ 'A' : ['<plug>(emmet-anchorize-summary)'         , 'Anchorize summary'],
      \ 'm' : ['<plug>(emmet-merge-lines)'               , 'Merge lines'],
      \ 'c' : ['<plug>(emmet-code-pretty)'               , 'Code pretty'],
      \ }

" a is for actions
let g:which_key_map.a = {
      \ 'name' : '[ Actions ]' ,
      \ 'c' : [':ColorizerToggle'        , 'Colorizer'],
      \ 'h' : [':let @/ = ""'            , 'Remove search highlight'],
      \ 'i' : [':IndentBlanklineToggle'  , 'Toggle indent lines'],
      \ 'n' : [':set nonumber!'          , 'Line numbers'],
      \ 's' : [':s/\%V\(.*\)\%V/"\1"/'   , 'Surround'],
      \ 'r' : [':set norelativenumber!'  , 'Relative line nums'],
      \ 'v' : [':Codi'                   , 'Virtual repl on'],
      \ 'V' : [':Codi!'                  , 'Virtual repl off'],
      \ }
      " \ 'l' : [':Bracey'                 , 'start live server'],
      " \ 'L' : [':BraceyStop'             , 'stop live server'],

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '[ Buffer ]' ,
      \ '>' : [':BufferMoveNext'                          , 'Move next'],
      \ '<' : [':BufferMovePrevious'                      , 'Move prev'],
      \ 'b' : [':BufferLinePick'                          , 'Pick buffer'],
      \ 'd' : [':Bdelete'                                 , 'Delete buffer'],
      \ 'n' : [':BufferLineCycleNext'                     , 'Next buffer'],
      \ 'p' : [':BufferLineCyclePrev'                     , 'Previous buffer'],
      \ '?' : [':Telescope buffers'                       , 'Search buffers'],
      \ 's' : [':Telescope current_buffer_fuzzy_find'     , 'Search in buffer'],
      \ }

" d is for debug
" let g:which_key_map.d = {
"       \ 'name' : '+debug' ,
"       \ 'b' : ['DebugToggleBreakpoint '        , 'toggle breakpoint'],
"       \ 'c' : ['DebugContinue'                 , 'continue'],
"       \ 'i' : ['DebugStepInto'                 , 'step into'],
"       \ 'o' : ['DebugStepOver'                 , 'step over'],
"       \ 'r' : ['DebugToggleRepl'               , 'toggle repl'],
"       \ 's' : ['DebugStart'                    , 'start'],
"       \ }
      " \ 'O' : ['DebugStepOut'                  , 'next-buffer'],
      " \ 'S' : ['DebugGetSession '              , 'fzf-buffer'],

" D is for database
let g:which_key_map.D = {
      \ 'name' : '+database' ,
      \ 'u' : ['DBUIToggle '        , 'db ui toggle'],
      \ 'f' : ['DBUIFindBuffer'     , 'db find buffer'],
      \ 'r' : ['DBUIRenameBuffer'   , 'db rename buffer'],
      \ 'l' : ['DBUILastQueryInfo'  , 'db last query'],
      \ }

" F is for fold
let g:which_key_map.F = {
    \ 'name': '[ Fold ]',
    \ 'O' : [':set foldlevel=20'  , 'Open all'],
    \ 'C' : [':set foldlevel=0'   , 'Close all'],
    \ 'c' : [':foldclose'         , 'Close'],
    \ 'o' : [':foldopen'          , 'Open'],
    \ '1' : [':set foldlevel=1'   , 'Level1'],
    \ '2' : [':set foldlevel=2'   , 'Level2'],
    \ '3' : [':set foldlevel=3'   , 'Level3'],
    \ '4' : [':set foldlevel=4'   , 'Level4'],
    \ '5' : [':set foldlevel=5'   , 'Level5'],
    \ '6' : [':set foldlevel=6'   , 'Level6']
    \ }

" s is for search powered by telescope
let g:which_key_map.s = {
      \ 'name' : '[ Search ]' ,
      \ '.' : [':Telescope filetypes'                   , 'Filetypes'],
      \ 'B' : [':Telescope git_branches'                , 'Git branches'],
      \ 'd' : [':Telescope lsp_document_diagnostics'    , 'Document diagnostics'],
      \ 'D' : [':Telescope lsp_workspace_diagnostics'   , 'Workspace diagnostics'],
      \ 'f' : [':Telescope find_files'                  , 'Files'],
      \ 'h' : [':Telescope command_history'             , 'History'],
      \ 'i' : [':Telescope media_files'                 , 'Media files'],
      \ 'm' : [':Telescope marks'                       , 'Marks'],
      \ 'M' : [':Telescope man_pages'                   , 'Man pages'],
      \ 'o' : [':Telescope vim_options'                 , 'Vim options'],
      \ 't' : [':Telescope live_grep'                   , 'Text'],
      \ 'r' : [':Telescope registers'                   , 'Registers'],
      \ 'w' : [':Telescope file_browser'                , 'Buf fuz find'],
      \ 'u' : [':Telescope colorscheme'                 , 'Colorschemes'],
      \ }

" S is for Session
let g:which_key_map.S = {
      \ 'name' : '[ Session ]' ,
      \ 's' : [':SessionSave'           , 'save session'],
      \ 'l' : [':SessionLoad'           , 'load Session'],
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '[ Git ]' ,
      \ 'b' : [':GitBlameToggle'                   , 'Blame'],
      \ 'B' : [':GBrowse'                          , 'Browse'],
      \ 'd' : [':Git diff'                         , 'Diff'],
      \ 'j' : [':NextHunk'                         , 'Next hunk'],
      \ 'k' : [':PrevHunk'                         , 'Prev hunk'],
      \ 'l' : [':Git log'                          , 'Log'],
      \ 'n' : [':Neogit'                           , 'Neogit'],
      \ 'p' : [':PreviewHunk'                      , 'Preview hunk'],
      \ 'r' : [':ResetHunk'                        , 'Reset hunk'],
      \ 'R' : [':ResetBuffer'                      , 'Reset buffer'],
      \ 's' : [':StageHunk'                        , 'Stage hunk'],
      \ 'S' : [':Gstatus'                          , 'Status'],
      \ 'u' : [':UndoStageHunk'                    , 'Undo stage hunk'],
      \ }
      " \ 'n' : [':Neogit'                           , 'neogit'],

" G is for gist
let g:which_key_map.G = {
      \ 'name' : '[ Gist ]' ,
      \ 'b' : [':Gist -b'                          , 'Post gist browser'],
      \ 'd' : [':Gist -d'                          , 'Delete gist'],
      \ 'e' : [':Gist -e'                          , 'Edit gist'],
      \ 'l' : [':Gist -l'                          , 'List public gists'],
      \ 's' : [':Gist -ls'                         , 'List starred gists'],
      \ 'm' : [':Gist -m'                          , 'Post gist all buffers'],
      \ 'p' : [':Gist -P'                          , 'Post public gist '],
      \ 'P' : [':Gist -p'                          , 'Post private gist '],
      \ }
      " \ 'a' : [':Gist -a'                          , 'post gist anon'],

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '[ LSP ]' ,
      \ 'a' : [':Lspsaga code_action'                , 'Code action'],
      \ 'A' : [':Lspsaga range_code_action'          , 'Selected action'],
      \ 'd' : [':Telescope lsp_document_diagnostics' , 'Document diagnostics'],
      \ 'D' : [':Telescope lsp_workspace_diagnostics', 'Workspace diagnostics'],
      \ 'f' : [':LspFormatting'                      , 'Format'],
      \ 'I' : [':LspInfo'                            , 'Lsp info'],
      \ 'v' : [':LspVirtualTextToggle'               , 'Lsp toggle virtual text'],
      \ 'l' : [':Lspsaga lsp_finder'                 , 'Lsp finder'],
      \ 'L' : [':Lspsaga show_line_diagnostics'      , 'Line_diagnostics'],
      \ 'o' : [':Vista!!'                            , 'Outline'],
      \ 'p' : [':Lspsaga preview_definition'         , 'Preview definition'],
      \ 'q' : [':Telescope quickfix'                 , 'Quickfix'],
      \ 'r' : [':Lspsaga rename'                     , 'Rename'],
      \ 'T' : [':LspTypeDefinition'                  , 'Type defintion'],
      \ 'x' : [':cclose'                             , 'Close quickfix'],
      \ 's' : [':Telescope lsp_document_symbols'     , 'Document symbols'],
      \ 'S' : [':Telescope lsp_workspace_symbols'    , 'Workspace symbols'],
      \ }
      " \ 'H' : [':Lspsaga signature_help'             , 'signature_help'],
      " \ 'o' : [':Vista!!'                            , 'outline'],

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '[ Terminal ]' ,
      \ ';' : [':FloatermNew --wintype=normal --height=20'      , 'Terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'Fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'Git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'Docker'],
      \ 'n' : [':FloatermNew node'                              , 'Node'],
      \ 'N' : [':FloatermNew nnn'                               , 'Nnn'],
      \ 'p' : [':FloatermNew python'                            , 'Python'],
      \ 'm' : [':FloatermNew lazynpm'                           , 'Npm'],
      \ 't' : [':FloatermToggle'                                , 'Toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'Ytop'],
      \ 'u' : [':FloatermNew ncdu'                              , 'Ncdu'],
      \ }
      " \ 'r' : [':FloatermNew ranger'                            , 'ranger'],

" let g:which_key_map.R = {
"       \ 'name' : '+Find_Replace' ,
"       \ 'f' : [':Farr --source=vimgrep'    , 'file'],
"       \ 'p' : [':Farr --source=rgnvim'     , 'project'],
"       \ }

call which_key#register('<Space>', "g:which_key_map")

syntax match WhichKeyGroup /\[ [0-9A-Za-z_/-]*/
