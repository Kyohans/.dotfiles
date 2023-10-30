-- Globals
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

map = function(mode, lhs, rhs, opts)
  local opt = { noremap = true, silent = true }
  if opts ~= nil then
    for _, val in ipairs(opts) do
      table.insert(opt, val)
    end
  end

  vim.keymap.set(mode, lhs, rhs, opt)
end

