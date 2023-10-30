local lualine = require'lualine'

lualine.setup({
    options = {
      theme = 'auto'
    },
    sections = {
      lualine_a = {'branch', 'diff', 'diagnostics'},
      lualine_b = {'filename'},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {'filetype'},
    },
})
