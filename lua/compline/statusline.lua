


local M = {}

local git_branch = ""



-- Updates Git without blocking it
local function update_git_branch()
    local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
    if string.len(branch) > 0 then
        git_branch = " (git) " .. branch .. " "
    else
        git_branch = ""
    end
end



-- Gets the Vi mode and its color
local function get_mode()
    local current_mode = vim.api.nvim_get_mode().mode

    local mode_map = {
        ["n"]  = { text = " NOR ", hl = "%#StatusLineModeNormal#" },
        ["no"] = { text = " NOR ", hl = "%#StatusLineModeNormal#" },
        ["i"]  = { text = " INS ", hl = "%#StatusLineModeInsert#" },
        ["v"]  = { text = " VIS ", hl = "%#StatusLineModeVisual#" },
        ["V"]  = { text = " V-L ", hl = "%#StatusLineModeVisual#" },
        [""] = { text = " V-B ", hl = "%#StatusLineModeVisual#" }, -- Ctrl-V
        ["R"]  = { text = " REP ", hl = "%#StatusLineModeReplace#" },
        ["c"]  = { text = " CMD ", hl = "%#StatusLineModeCommand#" },
    }

    local mode_data = mode_map[current_mode]
    -- Fallback
    if not mode_data then
        mode_data = { text = " " .. current_mode .. " ", hl = "%#StatusLineModeNormal#" }
    end

    return mode_data.hl .. mode_data.text .. "%#StatusLineFill#"
end



-- The function that Neovim calls every time it draws the screen
function M.render()
    return table.concat({
        get_mode(),                     -- Bloque de Modo (NOR, INS...)
        "%#StatusLineGit#", git_branch, -- Rama Git
        "%#StatusLineInfo# %f %m %r",   -- Archivo
        "%#StatusLineFill#",            -- Resetear color
        "%=",                           -- Empujar a la derecha
        "%#StatusLineFill#",            -- Color de fondo vacío
        " %y ",                         -- Tipo de archivo
        " %p%% ",                       -- Porcentaje
        " %l:%c "                       -- Línea:Columna
    })
end




-- Activation function (important)
function M.setup()
    -- Config Git listeners
    vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "BufWritePost" }, {
        callback = update_git_branch,
    })

    -- Makes sure that the barr is always showing (2) or global (3)
    vim.opt.laststatus = 2

    -- Assigns the statusline to this function
    vim.opt.statusline = "%!v:lua.require('compline.statusline').render()"
end




return M

