


local M = {}

--[[ Theme palette
bg	        #f0efeb
bg-alt	    #e0dcd4
base0	    #f5f4f2
base1	    #efeeed
base2	    #e5e3e0
base3	    #d8d6d3
base4	    #b8b5b0
base5	    #9a9791
base6	    #7d7a75
base7	    #5f5c58
base8	    #2d2a27
fg	        #1a1d21
fg-alt	    #4a4d51
red	        #8b6666
orange	    #7a6d5a
green	    #5a6b5a
blue	    #5a6b7a
cyan	    #64757d
yellow	    #8b7e52
teal	    #4d6b6b
dark-cyan	#546470
--]]


--[[
bg = '#f0efeb',
bg_alt = '#e0dcd4',

base0 = '#f5f4f2',
base1 = '#efeeed',
base2 = '#e5e3e0',
base3 = '#d8d6d3',
base4 = '#b8b5b0',
base5 = '#9a9791',
base6 = '#7d7a75',
base7 = '#5f5c58',
base8 = '#2d2a27',

fg = '#1a1d21',
fg_alt = '#4A4D51',

red = '#8B6666',
orange = '#7A6D5A',
green = '#5A6B5A',
yellow = '#8B7E52',
blue = '#5A6B7A',
cyan = '#64757d',
teal = '#4D6B6B',
dark_cyan = '#546470',
--]]





-- Inspired from Compline palette (https://github.com/jblais493/compline)
M.colors = {
    -- Colors for Vim/Neovim --
    color0 = '#efeeed',
    color8 = '#8B6666', -- red

    color1 = '#e5e3e0',
    color9 = '#7A6D5A', -- orange

    color2 = '#d8d6d3',
    color10 = '#5A6B5A', -- green

    color3 = '#b8b5b0',
    color11 = '#8B7E52', -- yellow

    color4 = '#9a9791',
    color12 = '#5A6B7A', -- blue

    color5 = '#7d7a75',
    color13 = '#64757d', --cyan

    color6 = '#5f5c58',
    color14 = '#4D6B6B', -- teal

    color7 = '#2d2a27',
    color15 = '#546470', -- dark cyan


    -- Extra colors --
    bg = '#f0efeb',
    fg = '#1a1d21',

    fg_alt = '#4a4d51',
    bg_alt = '#e0dcd4',

    cursor = '#2d2a27',
    cursor_text_color = '#1a1d21', -- TODO

    selection_foreground = '#e0dcd4',
    selection_background = '#3d424a',
}



return M



