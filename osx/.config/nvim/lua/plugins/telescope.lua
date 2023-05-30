local function load_extensions()
	--[[
  require("telescope").load_extension("file_browser")
  require("telescope").load_extension("ui-select")
  require("telescope").load_extension("notify")
  require("telescope").load_extension("project")
  require("telescope").load_extension("dap")
 ]]
	--
end

return {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "BurntSushi/ripgrep" },
		{ "sharkdp/fd" },
		{ "nvim-telescope/telescope-fzf-native.nvim" },
	},
	keys = {
		--{ "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
		{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
		{ "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Git Files" },
		{ "<leader>f/", "<cmd>Telescope live_grep<cr>", desc = "Grep" },
	},
	config = function()
		local actions = require("telescope.actions")

		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						-- TODO: couldn't get this to work for some reason
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
					},
				},
			},
		})
		load_extensions()
	end,
}
