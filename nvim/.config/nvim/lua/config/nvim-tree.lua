require('globals')

-- Setup --
require('nvim-tree').setup({
    view = {
      width = 25,
    },
    filters = {
      dotfiles = true,
    },
    update_focused_file = {
      enable = true,
      update_root = true,
    },
})

-------------
-- Keymaps --
-------------

map('n', '<leader>nn', ':NvimTreeToggle<CR>')
map('n', '<leader>nf', ':NvimTreeFindFile<CR>')
map('n', '<leader>nc', ':NvimTreeCollapse<CR>')
map('n', '<leader>nr', ':NvimTreeRefresh<CR>')
