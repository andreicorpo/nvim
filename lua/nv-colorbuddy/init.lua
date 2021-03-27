local Color, colors, Group, groups, styles = require('colorbuddy').setup({override = true})

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
Color.new('red', '#ff5c57')
Color.new('blue', '#57c7ff')
Color.new('green', '#5af78e')
Color.new('yellow', '#f3f99d')
Color.new('white', '#ffffff')
Color.new('dark', '#11141a')
Color.new('cyan', '#9aedfe')

-- Define highlights in terms of `colors` and `groups`
Group.new('Normal', colors.white, colors.none)
Group.new('SignColumn', colors.none, colors.none)
Group.new('LineNr', colors.dark:light(0.3), colors.none)
Group.new('CursorLineNr', colors.green, colors.none)
Group.new('Whitespace', colors.white, colors.none)
Group.new('NonText', colors.cyan:light(), colors.none)
Group.new('CursorLine', colors.none, colors.dark:light(0.05))
Group.new('String', colors.green, colors.none, styles.italic)
Group.new('TSString', groups.String, groups.String, styles.italic)
Group.new('DashboardCenter', colors.green, colors.none, styles.bold)
Group.new('GitSignsAdd', colors.green, colors.dark)
Group.new('GitSignsChange', colors.blue, colors.dark)
Group.new('GitSignsDelete', colors.red, colors.dark)
Group.new('MsgArea', colors.green, colors.dark)
Group.new('MoreMsg', colors.green, colors.dark)
Group.new('Question', colors.blue, colors.dark)
