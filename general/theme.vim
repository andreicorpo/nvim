let g:nvcode_termcolors=256

syntax on
" colorscheme nord
" colorscheme nvcode
" colorscheme onedark
colorscheme snazzy
" colorscheme aurora
" colorscheme gloombuddy
" colorscheme doom-one

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi Comment cterm=italic
    hi String gui=italic cterm=italic
    hi TSString gui=italic cterm=italic
    hi LineNr ctermbg=NONE guibg=NONE
    hi CursorLine guibg=#18253d
    hi TabLine ctermbg=NONE guibg=NONE guifg=#707070 ctermfg=NONE
    hi TabLineSel guibg=#1e232e guifg=#57c7ff
    hi Normal ctermbg=NONE guibg=NONE guifg=White ctermfg=231
    hi NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
    hi SignColumn ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
    hi TabLineFill ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 
    hi BufferTabpageFill guibg=NONE 
    hi DashboardCenter gui=bold guifg=#5af78e
endif

