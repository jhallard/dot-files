return function()
 
  require("dashboard").setup({
    theme = "doom",
    config = {
      header = {
            "                       .,,uod8B8bou,,.                               ",
            "              ..,uod8BBBBBBBBBBBBBBBBRPFT?l!i:.                     ",
            "         ,=m8BBBBBBBBBBBBBBBRPFT?!||||||||||||||                    ",
            "         !...:!TVBBBRPFT||||||||||!!^^\"\"'   ||||                   ",
            "         !.......:!?|||||!!^^\"\"'            ||||                   ",
            "         !.........||||                     ||||                    ",
            "         !.........||||  ##                 ||||                    ",
            "         !.........||||                     ||||                    ",
            "         !.........||||                     ||||                    ",
            "         !.........||||                     ||||                    ",
            "         !.........||||                     ||||                    ",
            "         `.........||||                    ,||||                    ",
            "          .;.......||||               _.-!!|||||                    ",
            "   .,uodWBBBBb.....||||       _.-!!|||||||||!:'                     ",
            "!YBBBBBBBBBBBBBBb..!|||:..-!!|||||||!iof68BBBBBb....                ",
            "!..YBBBBBBBBBBBBBBb!!||||||||!iof68BBBBBBRPFT?!::   `.              ",
            "!....YBBBBBBBBBBBBBBbaaitf68BBBBBBRPFT?!:::::::::     `.            ",
            "!......YBBBBBBBBBBBBBBBBBBBRPFT?!::::::;:!^\"\";:::       `.         ",
            "!........YBBBBBBBBBBRPFT?!::::::::::^''...::::::;         iBBbo.    ",
            "`..........YBRPFT?!::::::::::::::::::::::::;iof68bo.      WBBBBbo.  ",
            "  `..........:::::::::::::::::::::::;iof688888888888b.     `YBBBP^' ",
            "    `........::::::::::::::::;iof688888888888888888888b.     `      ",
            "      `......:::::::::;iof688888888888888888888888888888b.          ",
            "        `....:::;iof688888888888888888888888888888899fT!            ",
            "          `..::!8888888888888888888888888888888899fT|!^\"'          ",
            "            `' !!988888888888888888888888899fT|!^\"'                ",
            "                `!!8888888888888888899fT|!^\"'                       ",
            "                  `!988888888899fT|!^\"'                             ",
            "                    `!9899fT|!^\"'                                   ",
            "                      `!^\"'                                         ",
            "",
      },
      --week_header = { enable = true, },
      center = {
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Find File           ',
            desc_hl = 'String',
            key = 'b',
            keymap = 'SPC f f',
            key_hl = 'Number',
            action = 'lua print(2)'
          },
          {
            icon = ' ',
            desc = 'Find Dotfiles',
            key = 'f',
            keymap = 'SPC f d',
            action = 'lua print(3)'
          },
    },
    footer = {},  --your footer
      shortcut = {
        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' Apps',
          group = 'DiagnosticHint',
          action = 'Telescope app',
          key = 'a',
        },
        {
          desc = ' dotfiles',
          group = 'Number',
          action = 'Telescope dotfiles',
          key = 'd',
        },
      },
    },
  })
end
