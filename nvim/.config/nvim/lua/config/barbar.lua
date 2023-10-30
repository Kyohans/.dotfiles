require('globals')

-- Setup --
require('barbar').setup({
    animation = false,
    clickable = true,
    focus_on_close = 'right', -- Focus on the next tab when closing current buffer (similar to Firefox)

    icons = {
      buffer_index = false,
      buffer_number = false,
      button = '',

      gitsigns = {
        added = {enabled = true, icon = '+'},
        changed = {enabled = true, icon = '~'},
        deleted = {enabled = true, icon = '-'},
      },
      filetype = {
        -- Sets the icon's highlight group.
        -- If false, will use nvim-web-devicons colors
        custom_colors = false,

        -- Requires `nvim-web-devicons` if `true`
        enabled = true,
      },
      separator = {left = '▎', right = ''},
      modified = {button = '●'},
      pinned = {button = '', filename = true},

      alternate = {filetype = {enabled = false}},
      current = {buffer_index = true},
      inactive = {button = '×'},
      visible = {modified = {buffer_number = false}},
    },
})

-------------
-- Keymaps --
-------------

-- Move between tabs
map('n', '<leader>t,', ':BufferPrevious<CR>')
map('n', '<C-M-Left>', ':BufferPrevious<CR>')
map('n', '<leader>t.', ':BufferNext<CR>')
map('n', '<C-M-Right>', ':BufferNext<CR>')

-- Modify buffer
map('n', '<leader>tq', ':BufferClose<CR>')
map('n', '<leader>tp', ':BufferPin<CR>')
map('n', '<leader>tr', ':BufferRestore<CR>')

-- Goto Buffer 
map('n', '<leader>t', function()
    return vim.v.count < 1 and ':BufferLast<CR>' or ':BufferGoto [[vim.v.count]]<CR>'
  end
)


