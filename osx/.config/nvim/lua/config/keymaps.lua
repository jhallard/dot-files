local keymap = vim.keymap.set
local map = require("config.utils").map

-- Better indent
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP')

-- Some basic keymappings that I've become used to
map("n", "<Leader><Space>", ":nohlsearch<CR>", { silent=true })
map("n", "B", "^", { silent=true })
map("n", "E", "$", { silent=true })
map("n", "^", "<nop>", { silent=true })
map("n", "$", "<nop>", { silent=true })

-- Toggle on/off line numbers with ,l
map("n", "<Leader>l", ":set number!<CR>", { silent=true })

-- Allow us to scroll down with <C-Y> (C-D is taken for the terminal)
map("n", "<C-Y>", "<C-D>")

-- Drop back to a shell with ctrl-D and save your place
map("n", "<C-D>", ":terminal<CR>i")

-- custom remaps for me
map("n", "<F4>", ":tabn<CR>")
map("n", "<F2>", ":tabp<CR>")
map("n", "<F3>", ":tabe")

-- splits and split navigation
map("n", "<C-J>", "<C-W><C-J>")
map("n", "<C-K>", "<C-W><C-K>")
map("n", "<C-L>", "<C-W><C-L>")
map("n", "<C-H>", "<C-W><C-H>")

