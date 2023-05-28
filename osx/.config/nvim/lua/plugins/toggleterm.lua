return {
	"akinsho/toggleterm.nvim",
	version = "*",
	event = "VeryLazy",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<c-\>]],
			-- Note: decided to not use my traditional Ctrl-D mapping for this one
			-- because I might want to use Ctrl-D within the subshell itself.
			-- open_mapping = [[<C-D>]],
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
}
