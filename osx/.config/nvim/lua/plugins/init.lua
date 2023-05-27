return {
	"nvim-lua/plenary.nvim",
	"MunifTanjim/nui.nvim",
	{ "ellisonleao/gruvbox.nvim", priority = 1000 },
	{
		"nvim-tree/nvim-web-devicons",
		config = { default = true },
	},
	{ "nacro90/numb.nvim", event = "BufReadPre", config = true },
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "BufReadPre",
		config = true,
	},
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
		config = true,
	},
	{
		"rcarriga/nvim-notify",
		event = "VeryLazy",
		enabled = true,
		config = { default = true }, -- same as config = true
	},
	{
		"sindrets/diffview.nvim",
		cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
		config = true,
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("toggleterm").setup({
				size = 20,
				-- open_mapping = [[<c-\>]],
				open_mapping = [[<C-D>]],
				shade_filetypes = {},
				shade_terminals = true,
				shading_factor = 1, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
				start_in_insert = true,
				insert_mappings = true, -- whether or not the open mapping applies in insert mode
				persist_size = true,
				-- direction = "horizontal",
				direction = "float",
				close_on_exit = true, -- close the terminal window when the process exits
				shell = vim.o.shell, -- change the default shell
				-- This field is only relevant if direction is set to 'float'
				float_opts = {
					-- The border key is *almost* the same as 'nvim_win_open'
					-- see :h nvim_win_open for details on borders however
					-- the 'curved' border is a custom border type
					-- not natively supported but implemented in this plugin.
					border = "double",
					width = 200,
					height = 50,
					winblend = 3,
					highlights = {
						border = "Normal",
						background = "Normal",
					},
				},
				winbar = {
					enabled = true,
					name_formatter = function(term) --  term: terminal
						return term.name
					end,
				},
			})
		end,
	},
	{
		"monaqa/dial.nvim",
		event = "BufReadPre",
		config = function()
			vim.api.nvim_set_keymap("n", "<C-a>", require("dial.map").inc_normal(), { noremap = true })
			vim.api.nvim_set_keymap("n", "<C-x>", require("dial.map").dec_normal(), { noremap = true })
			vim.api.nvim_set_keymap("v", "<C-a>", require("dial.map").inc_visual(), { noremap = true })
			vim.api.nvim_set_keymap("v", "<C-x>", require("dial.map").dec_visual(), { noremap = true })
			vim.api.nvim_set_keymap("v", "g<C-a>", require("dial.map").inc_gvisual(), { noremap = true })
			vim.api.nvim_set_keymap("v", "g<C-x>", require("dial.map").dec_gvisual(), { noremap = true })
		end,
	},
	{
		"crispgm/nvim-tabline",
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional
		event = "VeryLazy",
		config = function()
			require("tabline").setup({
				show_index = true, -- show tab index
				show_modify = true, -- show buffer modification indicator
				show_icon = false, -- show file extension icon
				modify_indicator = "[+]", -- modify indicator
				no_name = "No name", -- no name buffer name
				brackets = { "[", "]" }, -- file name brackets surrounding
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		opts = function(_, opts)
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {
						statusline = {},
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = true,
					globalstatus = false,
					refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
					},
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { "filename" },
					lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = { "location" },
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {},
				winbar = {},
				inactive_winbar = {},
				extensions = {},
			})
		end,
	},
}
