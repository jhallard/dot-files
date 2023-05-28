local keymap = vim.keymap.set
local map = require("config.utils").map

-- Better indent
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP')

-- Some basic keymappings that I've become used to
map("n", "<Leader><Space>", ":nohlsearch<CR>", { silent = true })
map("n", "B", "^", { silent = true })
map("n", "E", "$", { silent = true })
map("n", "^", "<nop>", { silent = true })
map("n", "$", "<nop>", { silent = true })

-- Toggle on/off line numbers with ,l
map("n", "<Leader>l", ":set number!<CR>", { silent = true })

-- Allow us to scroll down with <C-Y> (C-D is taken for the terminal)
map("n", "<C-Y>", "<C-D>")

-- We're using the ToggleTerm package now (see plugins) instead of the built-in
-- map("n", "<C-D>", ":terminal<CR>i")

-- custom remaps for me
map("n", "<F4>", ":tabn<CR>")
map("n", "<F2>", ":tabp<CR>")
map("n", "<F3>", ":tabe")

-- splits and split navigation
map("n", "<C-J>", "<C-W><C-J>")
map("n", "<C-K>", "<C-W><C-K>")
map("n", "<C-L>", "<C-W><C-L>")
map("n", "<C-H>", "<C-W><C-H>")

local Terminal = require("toggleterm.terminal").Terminal
local edit_keymaps = Terminal:new({
	dir = "~/.config/nvim/lua",
	cmd = "nvim ./config/keymaps.lua",
	direction = "tab",
})

function _edit_keymaps()
	edit_keymaps:toggle()
end

-- Open up Vim in keymaps file
map("n", "<leader>ev", "<cmd>lua _edit_keymaps()<CR>", { noremap = true, silent = true })
