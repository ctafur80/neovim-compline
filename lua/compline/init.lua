


local M = {}


function M.load()

    -- Reset previous colorscheme.
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "compline"


    -- Load modules.
    local palette = require("compline.palette").colors
    local groups = require("compline.groups").get_groups(palette)


    -- Apply groups.
    for group, opts in pairs(groups) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end



function M.setup()
    -- User custom settings. Ej. require("compline").setup({ disable_italics = true })
    M.load()
end



return M


