

local M = {}



function M.get_groups(p)

    return {

        -- Basic UI
        Normal = { fg = p.fg, bg = p.bg },
        CursorLine = { bg = p.color0 },
        LineNr = { fg = p.color8 },
        Visual = { fg = p.selection_foreground, bg = p.selection_background },
        CursorLineNr = { fg = p.color3, bold = true },


        -- Syntax
        Identifier = { fg = p.fg },
        Variable = { link = 'Identifier' },
        ['@variable'] = { link = 'Variable' },
        Constant = { link = 'Variable' },
        ['@constant'] = { link = 'Constant' },
        Operator = { fg = p.fg },
        Type = { fg = p.fg },
        Delimiter = { fg = p.fg },
        Comment = { fg = p.color8, italic = true },
        String = { fg = p.color6 },
        Function = { fg = p.color5 },
        Special = { link = 'Normal' },
        Keyword = { fg = p.color1, bold = false },
        Statement = { bold = false },
        Title = { fg = p.fg, bold = true },

        Spell = { fg = p.fg },
        ['@spell'] = { link = 'Spell' },

        -- ['Comment'] = { link = 'Comment' },

        -- Markdown
        ['@spell.markdown'] = { link = 'Normal' },
        ['@spell.html'] = { link = 'Comment' },
        ['@markup.link.url.markdown_inline'] = { italic = true },
        ['@markup.link.url.markdown'] = { underline = false },
        ['markdownUrl'] = { link = '@spell.markdown' },
        ['@markup.link.label.markdown_inline'] = { fg = p.color3, underline = false },
        ['@markup.link.label.markdown'] = { link = '@spell.markdown' },
        ['@markup.link.markdown_inline'] = { link = '@spell.markdown' },
        ['markdownLinkText'] = { link = '@spell.markdown' },
        ['markdownLinkTextDelimiter'] = { link = '@spell.markdown' },
        ['@markup.raw.block.markdown'] = { fg = p.color6 },
        ['@markup.raw.markdown_inline'] = { fg = p.color6 },


        -- Other Languages
        ['@spell.bash'] = { link = 'Comment' },
        ['@spell.fish'] = { link = '@spell.bash' },
        ['@spell.c'] = { link = 'Comment' },
        ['@spell.typst'] = { fg = p.fg },
        ['@markup.math.typst'] = { fg = p.fg },
        ['@type.text.typst'] = { fg = p.color6 },
        ['@lsp.mod.math.typst'] = { fg = p.color6 },
        ['shStatement'] = { link = 'Function' },
        ['@function.builtin.bash'] = { link = 'Function' },



        ['@spell.yaml'] = { link = 'Comment' },

        -- Diagnostics
        DiagnosticError = { fg = p.color1 },
        DiagnosticWarn = { fg = p.color3 },
        DiagnosticInfo = { fg = p.color2 },
        DiagnosticHint = { fg = p.color8 },



        -- For gitsigns plugin
        -- "Add" suele ser Verde (color2 o color6 en tu paleta)
        GitSignsAdd = { fg = p.color2, bg = "NONE" },

        -- "Change" suele ser Amarillo/Naranja (color3) o Azul (color5)
        -- En tu paleta, color3 es un tono arena/amarillo suave que irá bien.
        GitSignsChange = { fg = p.color3, bg = "NONE" },

        -- "Delete" es Rojo (color1)
        GitSignsDelete = { fg = p.color1, bg = "NONE" },

        -- (Opcional) Si quieres que cambie el texto de la línea, no solo el signo
        -- GitSignsAddLn = { bg = p.base2 }, 

        -- Grupos estándar de Diff (Vim usa esto para diffs de archivos)
        -- Es buena práctica definirlos también para que coincidan
        DiffAdd = { fg = p.color2, bg = "NONE" },
        DiffChange = { fg = p.color3, bg = "NONE" },
        DiffDelete = { fg = p.color1, bg = "NONE" },
        DiffText = { fg = p.color5, bg = "NONE" }, -- Texto cambiado dentro de una línea



    }

end




return M

