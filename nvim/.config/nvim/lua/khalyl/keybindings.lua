--# Variables for namespaces
local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt

--# Key mapping helper function
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}

  if opts then options = vim.tbl_extend('force', options, opts) end

  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--# Global Variables
g.mapleader = ' '
g.maplocalleader = ','

--# telescope.nvim
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

--# nerdtree.nvim
map("n", "<C-n>", "<cmd>NERDTree<cr>")
map("n", "<leader>nf", "<cmd>NERDTreeFocus<cr>")
map("n", "<leader>nt", "<cmd>NERDTreeToggle<cr>")
map("n", "<leader>ng", "<cmd>NERDTreeFind<cr>")
