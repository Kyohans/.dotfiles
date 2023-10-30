require('globals')

local wk = require('which-key')

wk.register({
    ["<leader>"] = {
      n = { name = "NvimTree" },
      t = { name = "BarBar" },
      f = {
        name = "Telescope",
        f = "Find Files",
        g = "Live Grep",
        b = "Buffers",
        h = "Help Tags",
      },
    }
})
