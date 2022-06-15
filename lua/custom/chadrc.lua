-- Just an example, supposed to be placed in /lua/custom/

-- remove this if you dont use custom.init.lua at all

local M = {}

local pluginConfs = require "custom.plugins.configs"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
--
M.options = {
    user = function()
        require("custom.options")
    end,
}

M.ui = {
    theme = "gruvchad",
    transparency = true,
}

M.plugins = {
    user = require "custom.plugins",
    override = {

        ["nvim-telescope/telescope.nvim"] = pluginConfs.telescope,
        ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
        ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,

    },
    options = {
        lspconfig = {
            setup_lspconf = "custom.plugins.lspconfig",
        },
    },
}

M.mappings = require "custom.mappings"

return M
