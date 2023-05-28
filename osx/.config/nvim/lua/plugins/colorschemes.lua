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
}
