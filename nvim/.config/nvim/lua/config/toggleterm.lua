require('globals')

-- Setup --
require('toggleterm').setup({
    size = 15,
    hide_numbers = true,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    direction = 'horizontal',
    close_on_exit = true,

    open_mapping = [[<c-\>]],
})

-------------
-- Keymaps --
-------------
local opts = { buffer = 0 }
map('t', '<esc>', [[<C-\><C-n>]], opts)
