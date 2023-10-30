require('globals')
-----------------
-- Normal Mode --
-----------------

-- Window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Window commands
map('n', '<C-w>q', ':clo<CR>')
map('n', '<C-w>n', ':new<CR>')
map('n', '<C-w>N', ':vnew<CR>')
map('n', '<C-w>s', ':split<CR>')
map('n', '<C-w>S', ':vsplit<CR>')

-- Resize windows with arrow keys by 1 line
map('n', '<C-Down>', ':resize -1<CR>')
map('n', '<C-Up>', ':resize +1<CR>')
map('n', '<C-Right>', ':vertical resize -1<CR>')
map('n', '<C-Left>', ':vertical resize +1<CR>')

-----------------
-- Visual Mode --
-----------------

-- Start visual mode with same area as the previous area and the same mode
-- vim.keymap.set('v', '<', '<gv', opts)
-- vim.keymap.set('v', '>', '>gv', opts)


