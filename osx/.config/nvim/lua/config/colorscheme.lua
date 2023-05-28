-- Other colors found here
-- https://github.com/EdenEast/nightfox.nvim
-- vim.cmd("colorscheme nightfox")
-- vim.cmd("colorscheme dawnfox")
-- Want a light theme? Try "dawnfox"

-- Kangawa themes
-- https://github.com/rebelot/kanagawa.nvim
-- Light yellowish colortheme
-- vim.cmd("colorscheme kanagawa-lotus")
-- Extra dark
-- vim.cmd("colorscheme kanagawa-dragon")
-- Default, kinda dark
-- vim.cmd("colorscheme kanagawa-wave")
-- vim.cmd("colorscheme kanagawa")

-- Nordic themes
-- https://github.com/AlexvZyl/nordic.nvim
-- vim.cmd("colorscheme nordic")

local keymap = vim.keymap.set
local map = require("config.utils").map

local darkcolorschemes = {
	"nightfox",
	"terafox",
	"nordfox",
	"kanagawa-dragon",
	"kanagawa-wave",
	"kanagawa",
	"nordic",
}
local lightcolorschemes = {
	"kanagawa-lotus",
	"dawnfox",
}
local currentdark = 1
local currentlight = 1
local CURR_COLORSCHEME_FILE = "./current_colorscheme.lua"

function print_colorscheme(colorscheme)
	vim.schedule(function()
		vim.api.nvim_echo({ { "colorscheme " .. colorscheme, "Normal" } }, false, {})
	end)
end

function save_colorscheme(colorscheme)
	local config_file = io.open(CURR_COLORSCHEME_FILE, "w")
	--config_file:write("colorscheme = '" .. colorscheme .. "'\n")
	config_file:write("-- DO NOT EDIT THIS FILE\n")
	config_file:write("-- This file is autogenerated by config/colorschemes.lua\n")
	config_file:write("vim.cmd('colorscheme " .. colorscheme .. "')\n")
	config_file:close()
end

-- Function to cycle through colorschemes
function toggle_light_colorscheme()
	-- Apply the current colorscheme
	vim.cmd("colorscheme " .. lightcolorschemes[currentlight])
	print_colorscheme(lightcolorschemes[currentlight])
	save_colorscheme(lightcolorschemes[currentlight])
	-- Move to the next colorscheme
	currentlight = currentlight % #lightcolorschemes + 1
end

-- Function to cycle through colorschemes
function toggle_dark_colorscheme()
	-- Apply the current colorscheme
	vim.cmd("colorscheme " .. darkcolorschemes[currentdark])
	print_colorscheme(darkcolorschemes[currentdark])
	save_colorscheme(darkcolorschemes[currentdark])
	-- Move to the next colorscheme
	currentdark = currentdark % #darkcolorschemes + 1
end

map("n", "<leader>sd", "<cmd>lua toggle_dark_colorscheme()<CR>", { noremap = true, silent = true })
map("n", "<leader>sl", "<cmd>lua toggle_light_colorscheme()<CR>", { noremap = true, silent = true })
