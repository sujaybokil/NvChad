return {

	["rmagatti/auto-session"] = {
		opt = true,
		cmd = {"SaveSession", "DeleteSession", "RestoreSession", "RestoreSessionFromFile"},
		config = function ()
			require("auto-session").setup {
				auto_save_enabled = false,
				auto_restore_enabled = false,
				pre_save_cmds = {"NvimTreeClose"},
				post_restore_cmds = {"NvimTreeRefresh"}
			}
		end
	},

    ["rmagatti/session-lens"] = {
        opt = true,
        cmd = { "SearchSession" },
        requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
        config = function ()
            require("session-lens").setup {
                prompt_title = "SESSIONS",
            }
        end
    },

    ["iamcco/markdown-preview.nvim"] = {
        opt = true,
        run = function() vim.fn["mkdp#util#install"]() end,
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" }
    },

    ["https://github.com/tpope/vim-fugitive.git"] = {
        opt = true,
        cmd = {"Git", "G", "Gdiffsplit", "Gbrowse"}
    },

    ["folke/todo-comments.nvim"] = {
        opt = true,
        cmd = { "TodoQuickFix", "TodoLocList", "TodoTrouble", "TodoTelescope" },
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {}
        end
    },

    ["nvim-telescope/telescope-file-browser.nvim"] = {
        requires = "nvim-telescope/telescope.nvim",
    },

}
