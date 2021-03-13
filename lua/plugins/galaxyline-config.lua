local gl = require('galaxyline')
local gl_vcs = require('galaxyline.provider_vcs')
local gls = gl.section
gl.short_line_list = {'coc-explorer','LuaTree','vista','dbui'}

local colors = {
  bg = 'NONE',
  black = "#000000",
  darkgrey = "#1e232e",
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
  github = "#e24329",
}

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end


local mode_color = function()
  local mode = {n = colors.blue,
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
                ce=colors.red,
                r = colors.cyan,
                rm = colors.cyan,
                ['r?'] = colors.cyan,
                ['!']  = colors.red,
                t = colors.red}
  return mode[vim.fn.mode()]
end


gls.left[1] = {
  ViModeIcon = {
    provider = function()
        vim.api.nvim_command('hi GalaxyViModeIcon guifg='..mode_color())
        return '▋    '
    end,
    highlight = {mode_color(),colors.darkgrey},
  },
}

gls.left[2] = {
  ViMode = {
    provider = function()
        vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color())
        return 'hello '
    end,
    highlight = {mode_color(),colors.darkgrey,'italic'},
  },
}

gls.left[3] = {
  ViModeSeparator = {
    provider = function()
        if(buffer_not_empty()) then
          vim.api.nvim_command('hi GalaxyViModeSeparator guibg='..colors.darkgrey)
        else
          vim.api.nvim_command('hi GalaxyViModeSeparator guibg=NONE')
        end
        return ' '
    end,
    highlight = {colors.darkgrey, colors.darkgrey},
  },
}

gls.left[4] = {
  GitIcon = {
    provider = function() return '    ' end,
    condition = buffer_not_empty,
    separator = ' ',
    separator_highlight = {colors.darkgrey,colors.darkgrey},
    highlight = {colors.white,colors.darkgrey},
  }
}
gls.left[5] = {
  GitBranch = {
    provider = 'GitBranch',
    separator = '',
    separator_highlight = {colors.darkgrey,colors.darkgrey},
    highlight = {colors.white,colors.darkgrey},
    condition = buffer_not_empty,
  }
}

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 and buffer_not_empty() then
    return true
  end
  return false
end

gls.left[6] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = function()
      if checkwidth() and gl_vcs.diff_add() then
        return true
      else
        return false
      end
    end,
    separator = ' ',
    separator_highlight = {colors.darkgrey,colors.darkgrey},
    icon = '  ',
    highlight = {colors.green,colors.darkgrey},
  }
}
gls.left[7] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    separator = ' ',
    separator_highlight = {colors.darkgrey,colors.darkgrey},
    icon = '  ',
    highlight = {colors.blue,colors.darkgrey},
  }
}
gls.left[8] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    separator = '',
    separator_highlight = {colors.darkgrey,colors.bg},
    icon = '  ',
    highlight = {colors.red,colors.darkgrey},
  }
}
gls.left[9] = {
  LeftEnd = {
    provider = function() return ' ' end,
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.purple,colors.bg}
  }
}
gls.left[10] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    separator = ' ',
    separator_highlight = {colors.bg, colors.bg},
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}
gls.left[11] = {
  Space = {
    provider = function () return '' end
  }
}
gls.left[12] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    separator = ' ',
    separator_highlight = {colors.bg, colors.bg},
    icon = '  ',
    highlight = {colors.yellow,colors.bg},
  }
}
gls.left[13] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    separator = ' ',
    separator_highlight = {colors.bg, colors.bg},
    icon = '   ',
    highlight = {colors.blue,colors.bg},
  }
}
gls.left[14] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    separator = ' ',
    separator_highlight = {colors.bg, colors.bg},
    icon = '   ',
    highlight = {colors.orange,colors.bg},
  }
}

gls.right[1] = {
  FileTypeSeparator = {
    provider = function()
        return ' '
    end,
    highlight = {colors.darkgrey,colors.bg},
  },
}

gls.right[2]= {
  FileIcon = {
    provider = {
        p = 'FileIcon',
        f = function()
          vim.api.nvim_command('hi GalaxyFileIcon guifg='..mode_color())
        end
    },
    separator = ' ',
    separator_highlight = {colors.darkgrey, colors.darkgrey},
    highlight = {mode_color(),colors.darkgrey},
  }
}

gls.right[3] = {
  EmptySpace = {
    provider = function()
        return ' '
    end,
    highlight = {colors.darkgrey,colors.darkgrey},
  },
}

gls.right[4]= {
  FileName = {
    provider = {
        p = 'FileName',
        f = function()
          vim.api.nvim_command('hi GalaxyFileName guifg='..mode_color())
        end
    },
    highlight = {mode_color(),colors.darkgrey},
  }
}

gls.right[5] = {
  LineColumnSeparator = {
    provider = function()
        vim.api.nvim_command('hi GalaxyLineColumnSeparator guifg='..mode_color())
        return '  '
    end,
    highlight = {mode_color(),colors.darkgrey},
  },
}

gls.right[6]= {
  LineInfo = {
    provider = {
        p = 'LineColumn',
        f = function()
          vim.api.nvim_command('hi GalaxyLineInfo guifg='..mode_color())
        end
    },
    highlight = {mode_color(),colors.darkgrey},
  }
}

gls.right[7] = {
  EmptySpace = {
    provider = function()
        return ' '
    end,
    highlight = {colors.darkgrey,colors.darkgrey},
  },
}

gls.right[8] = {
  LineColumnSeparator = {
    provider = function()
        vim.api.nvim_command('hi GalaxyLineColumnSeparator guifg='..mode_color())
        return '  '
    end,
    highlight = {mode_color(),colors.darkgrey},
  },
}

gls.right[9]= {
  PerCent = {
    provider = {
        p = 'LinePercent',
        f = function()
          vim.api.nvim_command('hi GalaxyPerCent guifg='..mode_color())
        end
    },
    highlight = {mode_color(),colors.darkgrey},
  }
}

gls.right[10] = {
  EmptySpace = {
    provider = function()
        return ' '
    end,
    highlight = {colors.darkgrey,colors.darkgrey},
  },
}

gls.right[11] = {
  ScrollBar = {
    provider = {
        p = 'ScrollBar',
        f = function()
          vim.api.nvim_command('hi GalaxyScrollBar guifg='..mode_color())
        end
    },
    highlight = {mode_color(),colors.darkgrey},
  }
}


gls.short_line_left[1] = {
  EmptySpaceShrt = {
    provider = function()
        return '▋  '
    end,
    highlight = {colors.darkgrey,colors.darkgrey},
  },
}

gls.short_line_left[2]= {
  FileIconShrt = {
    provider = {
        p = 'FileIcon',
        f = function()
          vim.api.nvim_command('hi GalaxyFileIconShrt guifg='..mode_color())
        end
    },
    separator = ' ',
    separator_highlight = {colors.darkgrey, colors.darkgrey},
    highlight = {mode_color(),colors.darkgrey},
  }
}

gls.short_line_left[3] = {
  EmptySpaceShrt = {
    provider = function()
        return ' '
    end,
    highlight = {colors.darkgrey,colors.darkgrey},
  },
}

gls.short_line_left[4]= {
  FileNameShrt = {
    provider = {
        p = 'FileName',
        f = function()
          vim.api.nvim_command('hi GalaxyFileNameShrt guifg='..mode_color())
        end
    },
    highlight = {mode_color(),colors.darkgrey},
  }
}


