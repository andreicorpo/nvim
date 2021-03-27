vim.g.dashboard_custom_header = {
    '         ▄█          █          █▄          ',
    '       ▐██      ▄█  ███  █▄      ██▌        ',
    '      ▐██▌     ██████████████     ▐██▌      ',
    '     ████     ████████████████    ████      ',
    '     ▐█████  ██████████████████  █████▌     ',
    '     ████████████████████████████████       ',
    '      ███████▀▀████████████▀▀███████        ',
    '       █████▌  ▄▄ ▀████▀ ▄▄  ▐█████         ',
    '     ▄▄██████▄ ▀▀  ████  ▀▀ ▄██████▄▄       ',
    '     ██████████████████████████████████     ',
    '   ████████████████████████████████████     ',
    '  ██████   ███████▀▄██▄▀███████   ██████▌   ',
    ' ▐█████     ██████████████████      █████▌  ',
    '  ▐█████      ██████▀  ▀██████       █████▌ ',
    '   █████▄      ███        ███      ▄█████   ',
    '     ██████     █          █     ██████     ',
    '      █████                     █████       ',
    '       █████                   █████        ',
    '       ████   ▄            ▄    ████        ',
    '         ████ ██           ██ ████          ',
    '           ████████ ▄██▄ ████████           ',
    '          ████████████████████████          ',
    '          ████████████████████████          ',
    '           ▀█████████▀▀█████████▀           ',
    '             ▀███▀       ▀███▀              '
}

vim.g.dashboard_preview_pipeline = 'lolcat'

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    b = {description = {'  Recently opened files                SPC s w'}, command = 'Telescope oldfiles'},
    c = {description = {'  Browse files                         SPC s e'}, command = 'Telescope file_browser'},
    a = {description = {'  Open file                            SPC s f'}, command = 'Telescope find_files'},
    d = {description = {'  Search word                          SPC s t'}, command = 'Telescope live_grep'},
    f = {description = {'  Quit                                 SPC q q'}, command = 'quit'}
}


vim.g.dashboard_custom_footer = {
    '  ▄▄▄       ▄████▄   ',
    ' ▒████▄    ▒██▀ ▀█   ',
    ' ▒██  ▀█▄  ▒▓█    ▄  ',
    ' ░██▄▄▄▄██ ▒▓▓▄ ▄██▒ ',
    '  ▓█   ▓██▒▒ ▓███▀ ░ ',
    '  ▒▒   ▓▒█░░ ░▒ ▒  ░ ',
    '   ▒   ▒▒ ░  ░  ▒    ',
    '   ░   ▒   ░         ',
    '       ░  ░░ ░       ',
    '           ░         '
}
