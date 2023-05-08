-- [[ init.lua ]]

-- Let's init the LazyVim plugin
require "config.options"
require "config.lazy"
require "config.colorscheme"

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    require "config.autocmds"
    require "config.keymaps"
  end,
})

