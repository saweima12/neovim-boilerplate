require("dashboard").setup{
  theme = 'hyper',
  config = {
    week_header = {
      enable = true
    },
    shortcut = {
      {
        desc = '󰊳 Update',
        group = '@property',
        action = 'Lazy update',
        key = 'u'
      },
      {
        desc = ' Mason',
        group = 'Label',
        action = 'Mason',
        key = 'm',
      },
      {
        desc = ' Project',
        group = 'Repeat',
        action = 'Telescope projects',
        key = 'p',
      },
      {
        desc = ' Exit',
        group = 'Number',
        action = 'exit',
        key = 'e',
      },
    },
  }
}
