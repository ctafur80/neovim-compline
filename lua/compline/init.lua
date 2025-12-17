


local M = {}


-- Default settings
local default_config = {
    transparent = false,      -- Fondo transparente (futuro)
    enable_statusline = false, -- Por defecto apagada, el usuario debe pedirla
    terminal_colors = true,   -- Definir colores ANSI
}


-- Stores the final settings
M.config = {}



function M.load()
    -- Resets colors and loads pallette and hl goups
    if vim.g.colors_name then vim.cmd("hi clear") end
    vim.o.termguicolors = true
    vim.g.colors_name = "compline"

    -- Loads plug-in internal modules
    local palette = require("compline.palette").colors
    local groups = require("compline.groups").get_groups(palette)


    -- Makes groups take effect
    for group, opts in pairs(groups) do
        vim.api.nvim_set_hl(0, group, opts)
    end


    vim.opt.guicursor = ""
    vim.opt.guicursor =
            "n-c-sm:block-Cursor," ..
            "v-ve:block-CursorVisual," ..
            "i-ci:ver25-CursorInsert," ..
            "r-cr-o:hor20-CursorReplace"

    vim.cmd("redraw")

end



-- 2. La función SETUP (El punto de entrada)
function M.setup(user_opts)
    -- A. Mezclar configuración: Defaults + Lo que pida el usuario
    -- "force" hace que lo del usuario sobrescriba al default
    M.config = vim.tbl_deep_extend("force", default_config, user_opts or {})

    -- B. Cargar el esquema de colores inmediatamente (o esperar a llamar colorscheme)
    -- Nota: Muchos plugins de temas prefieren solo guardar config aquí y cargar
    -- realmente cuando el usuario hace ":colorscheme compline". 
    -- Pero para simplificar, podemos cargar aquí si quieres.

    -- Requires a terminal with OSC 12 escape codes support, like Ghostty
    if M.config.enable_statusline then
        require("compline.statusline").setup()
    end

end



return M



