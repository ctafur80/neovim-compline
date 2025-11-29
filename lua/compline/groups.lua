

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
        ['@spell.c'] = { link = 'Comment' },
        ['@spell.typst'] = { fg = p.fg },
        ['@markup.math.typst'] = { fg = p.fg },
        ['@type.text.typst'] = { fg = p.color6 },
        ['@lsp.mod.math.typst'] = { fg = p.color6 },
        ['shStatement'] = { link = 'Function' },
        ['@function.builtin.bash'] = { link = 'Function' },


        -- Diagnostics
        DiagnosticError = { fg = p.color1 },
        DiagnosticWarn = { fg = p.color3 },
        DiagnosticInfo = { fg = p.color2 },
        DiagnosticHint = { fg = p.color8 },


    }

end




return M

