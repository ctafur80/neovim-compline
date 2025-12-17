

-- lua/compline/statusline.lua
local M = {}

-- 1. Lógica de Git (Caché optimizada)
local function update_git_branch()
    local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
    if string.len(branch) > 0 then
        -- Añadimos un espacio extra para que respire
        vim.b.git_branch = " (git) " .. branch .. " "
    else
        vim.b.git_branch = ""
    end
end

-- Actualizamos la rama solo en eventos clave, no a cada parpadeo
vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "BufWritePost" }, {
    callback = update_git_branch,
})

-- 2. Lógica de Modos (Devuelve el grupo de color según el modo)
local function get_mode()
    local current_mode = vim.api.nvim_get_mode().mode
    
    -- Mapeo de modos a Nombres y Colores definidos en groups.lua
    local mode_map = {
        ["n"]  = { text = " NOR ", hl = "%#StatusLineModeNormal#" },
        ["no"] = { text = " NOR ", hl = "%#StatusLineModeNormal#" },
        ["i"]  = { text = " INS ", hl = "%#StatusLineModeInsert#" },
        ["ic"] = { text = " INS ", hl = "%#StatusLineModeInsert#" },
        ["v"]  = { text = " VIS ", hl = "%#StatusLineModeVisual#" },
        ["V"]  = { text = " V-L ", hl = "%#StatusLineModeVisual#" },
        [""] = { text = " V-B ", hl = "%#StatusLineModeVisual#" }, -- Ctrl-V
        ["R"]  = { text = " REP ", hl = "%#StatusLineModeReplace#" },
        ["c"]  = { text = " CMD ", hl = "%#StatusLineModeCommand#" },
        ["t"]  = { text = " TRM ", hl = "%#StatusLineModeCommand#" },
    }

    local mode_data = mode_map[current_mode]
    -- Fallback si es un modo raro
    if not mode_data then
        mode_data = { text = " " .. current_mode .. " ", hl = "%#StatusLineModeNormal#" }
    end

    -- Devolvemos: ColorModo + TextoModo + VolverAlFondo
    return mode_data.hl .. mode_data.text .. "%#StatusLineFill#"
end

-- 3. Renderizado final
function M.render()
    -- Solo mostramos la barra personalizada en la ventana activa
    if vim.g.statusline_winid ~= vim.api.nvim_get_current_win() then
        return "%#StatusLineNC# %f %=" -- Versión simple para ventanas inactivas
    end

    local mode = get_mode()
    local git = "%#StatusLineGit#" .. (vim.b.git_branch or "")
    local filename = "%#StatusLineInfo# %f %m %r"
    local filetype = " %y "
    local percentage = " %p%% "
    local location = " %l:%c "
    local align_right = "%="

    return table.concat({
        mode,
        git,
        filename,
        "%#StatusLineFill#", -- Relleno vacío
        align_right,
        filetype,
        percentage,
        location
    })
end

-- 4. Inyección en Vim
-- Usamos set statusline global
vim.opt.statusline = "%!v:lua.require('compline.statusline').render()"


return M



