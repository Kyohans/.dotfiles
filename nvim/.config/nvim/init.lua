-- Plugins
require('plugins')

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Import settings
require('options')
require('keymaps')
require('lazy').setup(plugins, opts)
require('lsp')

-- Set colorscheme
local colorscheme = 'gruvbox'
local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
vim.o.background = "dark"
if not ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
