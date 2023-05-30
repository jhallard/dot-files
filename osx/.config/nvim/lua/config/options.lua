-- Some simple aliases for us
local api = vim.api
local g = vim.g
local opt = vim.opt

g.mapleader = ","
g.localleader = "\\"

opt.showcmd = true
opt.number = true
opt.incsearch = true
opt.hlsearch = true --Set highlight on search
opt.number = true --Make line numbers default
opt.mouse = "a" --Enable mouse mode
opt.breakindent = true --Enable break indent
opt.undofile = true --Save undo history
opt.ignorecase = true --Case insensitive searching unless /C or capital in search
opt.smartcase = true -- Smart case
opt.updatetime = 250 --Decrease update time
opt.signcolumn = "yes" -- Always show sign column
opt.termguicolors = true -- Annoying: has terminal colors set via Nvim instead of the terminal
-- without this I get a warning about opacity not being able to be set
opt.clipboard = "unnamedplus" -- Access system clipboard

-- [[ Whitespace ]]
opt.expandtab = true -- bool: Use spaces instead of tabs
opt.shiftwidth = 4 -- num:  Size of an indent
opt.softtabstop = 4 -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 4 -- num:  Number of spaces tabs count for
opt.smarttab = true
-- opt.setnowrap = true

-- [[ Splits ]]
opt.splitright = true -- bool: Place new window to right of current one
opt.splitbelow = true -- bool: Place new window below the current one
opt.laststatus = 3 -- show statusline on bottom and simple split between vertical panes
