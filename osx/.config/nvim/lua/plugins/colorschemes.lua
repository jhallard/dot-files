return {
	{
		"rebelot/kanagawa.nvim",
		event = "BufReadPre",
		config = true,
	},
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		config = true, --function()
		--require("nordic").load()
		-- end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		opts = {},
	},
	{
		"rose-pine/neovim",
		lazy = false,
		name = "rose-pine",
	},
	{
		"hardhackerlabs/theme-vim",
		name = "hardhacker",
		lazy = false,
		--priority = 1000,
		init = function()
			vim.g.hardhacker_darker = 0
			vim.g.hardhacker_hide_tilde = 1
			vim.g.hardhacker_keyword_italic = 1
		end,
	},
}
