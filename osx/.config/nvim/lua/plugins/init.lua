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
        "TimUntersberger/neogit",
        cmd = "Neogit",
        config = {
            integrations = { diffview = true },
        },
        keys = {
            { "<leader>gs", "<cmd>Neogit kind=floating<cr>", desc = "Status" },
        },
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
        'crispgm/nvim-tabline',
        dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional
        config = function()
            require('tabline').setup({
                show_index = true,        -- show tab index
                show_modify = true,       -- show buffer modification indicator
                show_icon = false,        -- show file extension icon
                modify_indicator = '[+]', -- modify indicator
                no_name = 'No name',      -- no name buffer name
                brackets = { '[', ']' },  -- file name brackets surrounding
            })
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = function(_, opts)
            require('lualine').setup {
              options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
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
                }
              },
              sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
              },
              inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
              },
              tabline = {},
              winbar = {},
              inactive_winbar = {},
              extensions = {}
            }
        end,
  },
}
