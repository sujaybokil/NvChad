local M = {}

M.nvimtree = {
    update_focused_file = {
        enable = false,
        update_cwd = false,
    },
}

M.telescope = {
    extensions_list = { "themes", "terms", "file_browser" }
}

M.treesitter = {
    ensure_installed = {
        "c",
        "lua",
        "python",
    },
}

return M
