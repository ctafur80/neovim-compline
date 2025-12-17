


local M = {}

-- 1. Configuración por defecto
-- Si el usuario no pone nada, estas son las opciones que se usan.
local default_config = {
    transparent = false,      -- Fondo transparente (futuro)
    enable_statusline = false, -- Por defecto apagada, el usuario debe pedirla
    terminal_colors = true,   -- Definir colores ANSI
}



-- Variable para guardar la configuración final
M.config = {}

function M.load()
    -- Resetear colores y cargar paleta/grupos
    if vim.g.colors_name then vim.cmd("hi clear") end
    vim.o.termguicolors = true
    vim.g.colors_name = "compline"

    -- Cargar módulos internos
    local palette = require("compline.palette").colors
    local groups = require("compline.groups").get_groups(palette)

    -- Aplicar grupos
    for group, opts in pairs(groups) do
        vim.api.nvim_set_hl(0, group, opts)
    end
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

    -- C. Lógica condicional: ¿Activamos la Statusline?
    if M.config.enable_statusline then
        -- Aquí llamamos al archivo statusline.lua que creamos antes
        require("compline.statusline").setup()
    end
end



return M



