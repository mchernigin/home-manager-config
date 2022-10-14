local custom_wombat = require'lualine.themes.wombat'

local almost_black = '#181818'
local blue_grey = '#696B77'
custom_wombat.normal.a.fg = almost_black
custom_wombat.normal.b.fg = almost_black
custom_wombat.normal.c.bg = almost_black
custom_wombat.insert.a.fg = almost_black
custom_wombat.visual.a.fg = almost_black
custom_wombat.inactive.a.bg = almost_black
custom_wombat.normal.b.bg = blue_grey
custom_wombat.normal.c.fg = blue_grey

require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = gruvbox_dark,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

