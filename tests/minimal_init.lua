-- minimal_init.lua



-- 1. Añadimos el directorio raíz del proyecto (donde está el plugin) al runtimepath
local project_root = vim.fn.fnamemodify(vim.fn.getcwd(), ":p")
vim.opt.rtp:prepend(project_root)


-- 2. Configuración básica para que la prueba sea cómoda
vim.cmd("syntax on")
vim.o.termguicolors = true
vim.o.number = true


-- 3. Intentamos cargar nvim-treesitter si está instalado en tu sistema
-- Esto es importante porque tu tema depende de capturas de Treesitter
-- (Buscamos en las rutas estándar de lazy.nvim, packer, o vim-plug)
local plugins = {
  "nvim-treesitter",
  "playground", -- Opcional, para :Inspect
}

-- Intenta añadir los plugins de tu instalación principal al path de prueba
-- (Esto es un truco para tener TS sin reinstalarlo en la prueba)
local data_path = vim.fn.stdpath("data")
local package_roots = {
    data_path .. "/lazy",
    data_path .. "/site/pack/packer/start",
    data_path .. "/site/pack/packer/opt",
}

for _, root in ipairs(package_roots) do
    for _, plugin in ipairs(plugins) do
        local path = root .. "/" .. plugin
        if vim.fn.isdirectory(path) == 1 then
            vim.opt.rtp:append(path)
        end
    end
end


-- 4. Activamos el esquema de color
-- Usamos pcall por si hay errores de carga, para que no crashee al inicio
local ok, _ = pcall(vim.cmd, "colorscheme compline")
if not ok then
    print("Error cargando el esquema de colores compline")
else
    print("Compline cargado correctamente desde: " .. project_root)
end


-- 5. Configurar Treesitter mínimamente si se cargó
local ts_ok, configs = pcall(require, "nvim-treesitter.configs")
if ts_ok then
    configs.setup {
        highlight = { enable = true },
    }
end



