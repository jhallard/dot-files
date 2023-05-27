return {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
    -- NOTE: I have a custom config defined in lua/plugins/ui/dashboard.lua
    -- but I had a ton of trouble getting it to actually work.. the defined mehthods
    -- wouldn't work as expected. I could get the header to render but nothing else 
    -- worked as expected. Annoying.
  --config = require("plugins.ui.dashboard"),
  config = function()
    require('dashboard').setup {
      -- config
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
