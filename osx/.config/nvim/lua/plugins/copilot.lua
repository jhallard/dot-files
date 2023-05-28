return {
	"zbirenbaum/copilot.lua",
	enabled = true,
	cmd = "Copilot",
	event = "InsertEnter",
	opts = {
		suggestion = {
			enabled = true,
			-- Completions will automatically show up
			auto_trigger = true,
			-- To cycle through completions, use <M-]> aka <Optional-]>
			-- to accept a completion, use <M-l>
			-- to ignore a completion, use <C-]> aka <Control-]>
			keymap = {
				accept = "<M-l>",
				-- accept = "<Tab>",
				next = "<M-]>",
				prev = "<M-[>",
				dismiss = "<C-]>",
			},
		},
		panel = {
			-- to open the panel,  use <M-CR> aka <Option-Enter> while in insert mode
			-- this will open up a new panel that will outline complex suggestions for you
			-- to accept a suggest, press <CR>.
			-- You're supposed to be able to jump through suggestions using <]]> and <[[>
			-- but they don't seem to work, so just navigate using j and k for now.
			enabled = true,
		},
	},
}
