local M = {}

M.nvimtree = {
   n = {
      -- toggle
      ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },

      -- focus
      ["<C-n>"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },
   },
}


M.auto_session = {
    n = {

        ["<leader>sl"] = { "<cmd> SearchSession <CR>", "   load session" },
        ["<leader>ss"] = {
            function()
                local sess_name = vim.fn.input("Session Name: ", "")
                vim.cmd("SaveSession ~/.local/share/nvim/sessions/" .. sess_name .. ".vim")
                print("Session saved successfully !!")
            end,
            "   save session"
        },
        ["<leader>sd"] = {
            function ()
                print("*** PRESS CTRL+D TO DELETE SESSION ***")
                vim.cmd("1.5sleep")
                vim.cmd("SearchSession")
            end,
            "   delete session"
        }

    }

}


M.telescope = {
    n = {
        ["<leader>fs"] = {"<cmd> Telescope file_browser <CR>", "   file browser"}
    }
}


M.extras = {
    n = {
        ["<C-q>"] = {"<cmd> wqall <CR>", "   save and quit Vim"},
        ["<leader>md"] = {"<cmd> MarkdownPreviewToggle <CR>", "   toggle markdown preview"}
    },
    i = {
        ["jk"] = {"<Esc>", "jk to enter command mode"}
    }
}




return M
