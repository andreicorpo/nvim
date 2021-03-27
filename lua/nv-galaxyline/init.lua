local gl = require('galaxyline')
-- get my theme in galaxyline repo
-- local colors = require('galaxyline.theme').default

local colors = {
    black = "#000000",
    bg = "#11141a",
    yellow = '#f3f99d',
    cyan = '#9aedfe',
    darkblue = '#081633',
    green = '#5af78e',
    orange = '#FF8800',
    purple = '#ff6ac1',
    magenta = '#d16d9e',
    grey = '#c0c0c0',
    blue = '#57c7ff',
    red = '#ff5c57',
    white = "#ffffff",
    github = "#e24329"
}

local condition = require('galaxyline.condition')
local gls = gl.section
gl.short_line_list = {'NvimTree', 'vista', 'dbui', 'packer'}

local mode_color = function()
    local mode = {
        n = colors.blue,
        i = colors.green,
        v = colors.github,
        [''] = colors.github,
        V = colors.github,
        c = colors.blue,
        no = colors.magenta,
        s = colors.orange,
        S = colors.orange,
        [''] = colors.orange,
        ic = colors.yellow,
        R = colors.red,
        Rv = colors.red,
        cv = colors.red,
        ce = colors.red,
        r = colors.cyan,
        rm = colors.cyan,
        ['r?'] = colors.cyan,
        ['!'] = colors.red,
        t = colors.red
    }
    return mode[vim.fn.mode()]
end

gls.left[1] = {
    ViMode = {
        provider = function()
            -- auto change color according the vim mode
            vim.api.nvim_command('hi GalaxyViMode guifg=' .. mode_color())
            return '▊ '
        end,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.red, colors.bg}
    }
}

print(vim.fn.getbufvar(0, 'ts'))
vim.fn.getbufvar(0, 'ts')

gls.left[2] = {
    GitIcon = {
        provider = function()
            -- auto change color according the vim mode
            vim.api.nvim_command('hi GalaxyGitIcon guifg=' .. mode_color())
            return ' '
        end,
        condition = condition.check_git_workspace,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.orange, colors.bg}
    }
}

gls.left[3] = {
    GitBranch = {
        provider = 'GitBranch',
        condition = condition.check_git_workspace,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.grey, colors.bg}
    }
}

gls.left[4] = {
    DiffAdd = {
        provider = 'DiffAdd',
        icon = '  ',
        condition = condition.hide_in_width,
        highlight = {colors.green, colors.bg}
    }
}

gls.left[5] = {
    DiffModified = {
        provider = 'DiffModified',
        icon = '  ',
        condition = condition.hide_in_width,
        highlight = {colors.blue, colors.bg}
    }
}

gls.left[6] = {
    DiffRemove = {
        provider = 'DiffRemove',
        icon = '  ',
        condition = condition.hide_in_width,
        highlight = {colors.red, colors.bg}
    }
}

gls.right[1] = {
    DiagnosticError = {provider = 'DiagnosticError', icon = '  ', highlight = {colors.error_red, colors.bg}}
}
gls.right[2] = {DiagnosticWarn = {provider = 'DiagnosticWarn', icon = '  ', highlight = {colors.orange, colors.bg}}}

gls.right[3] = {
    DiagnosticHint = {provider = 'DiagnosticHint', icon = '  ', highlight = {colors.vivid_blue, colors.bg}}
}

gls.right[4] = {DiagnosticInfo = {provider = 'DiagnosticInfo', icon = '  ', highlight = {colors.info_yellow, colors.bg}}}

gls.right[5] = {
    ShowLspClient = {
        provider = {
            p = 'GetLspClient',
            f = function()
                vim.api.nvim_command('hi ShowLspClient guifg=' .. mode_color())
            end
        },
        condition = function()
            local tbl = {['dashboard'] = true, [' '] = true}
            if tbl[vim.bo.filetype] then return false end
            return true
        end,
        icon = ' ',
        highlight = {colors.grey, colors.bg}
    }
}

gls.right[6] = {
    LineInfo = {
        provider = 'LineColumn',
        separator = '  ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.grey, colors.bg}
    }
}

gls.right[7] = {
    PerCent = {
        provider = 'LinePercent',
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.grey, colors.bg}
    }
}

gls.right[8] = {
    FileIcon = {
        provider = {
            p = 'FileIcon',
            f = function()
                vim.api.nvim_command('hi GalaxyFileIcon guifg=' .. mode_color())
            end
        },
        separator = ' ',
        separator_highlight = {colors.bg, colors.bg},
        highlight = {mode_color(), colors.bg}
    }
}

gls.right[9] = {
    BufferType = {
        provider = 'FileTypeName',
        condition = condition.hide_in_width,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.grey, colors.bg}
    }
}

gls.right[10] = {
    Space = {
        provider = function()
            return ' '
        end,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.orange, colors.bg}
    }
}

gls.right[11] = {
    ViMode2 = {
        provider = function()
            -- auto change color according the vim mode
            vim.api.nvim_command('hi GalaxyViMode2 guifg=' .. mode_color())
            return ' ▊'
        end,
        highlight = {colors.red, colors.bg}
    }
}

gls.short_line_left[1] = {
    BufferType = {
        provider = 'FileTypeName',
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.grey, colors.bg}
    }
}

gls.short_line_left[2] = {
    SFileName = {provider = 'SFileName', condition = condition.buffer_not_empty, highlight = {colors.grey, colors.bg}}
}

gls.short_line_right[1] = {BufferIcon = {provider = 'BufferIcon', highlight = {colors.grey, colors.bg}}}
