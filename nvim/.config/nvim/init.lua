-- Plugins
local plugins = {
  -- LSP and Completion
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim'},
  { 'neovim/nvim-lspconfig', lazy = true},
  { 'hrsh7th/nvim-cmp', config = function()
      return require('config.nvim-cmp')
    end
  },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },
  { 'L3MON4D3/LuaSnip' },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'onsails/lspkind.nvim' },
  { 'windwp/nvim-autopairs', event = "InsertEnter", opts = {}, },

  -- Comment Lines
  { 'numToStr/Comment.nvim', lazy = false },

  -- Telescope
  { 'nvim-treesitter/nvim-treesitter' },
  { 'nvim-lua/plenary.nvim' },
  { 'nvim-telescope/telescope.nvim',
      tag = '0.1.3',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
        return require('config.telescope')
      end,
  },

  -- Terminal
  { 'akinsho/toggleterm.nvim', config = function()
      return require('config.toggleterm')
    end
  },

  -- File Explorer
  { 'nvim-tree/nvim-tree.lua', config = function()
      return require('config.nvim-tree')
    end
  },
  { 'nvim-tree/nvim-web-devicons' },

  -- Statusline
  { 'nvim-lualine/lualine.nvim', config = function()
      return require('config.lualine')
    end
  },

  { 'preservim/tagbar' },
  { 'sheerun/vim-polyglot' },

  -- Colors
  { 'sainnhe/everforest' },
  { 'sunjon/shade.nvim', opts = { overlay_capacity = 25, opacity_step = 1 }, },

  -- Git signs/blames
  { 'lewis6991/gitsigns.nvim' },

  -- Tabline
  { 'romgrk/barbar.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'romgrk/barbar.nvim',
    },
    config = function()
      return require('config.barbar')
    end,
  },

  -- Which-Key
  { 'folke/which-key.nvim', config = function()
      return require('config.which-key')
    end
  },
}

-- Disable netrw for NvimTree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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
local colorscheme = 'everforest'
local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
vim.o.background = "dark"
if not ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

-- autocmd
local config_group = vim.api.nvim_create_augroup('MyConfigGroup', {}) -- A global group for all your config autocommands
vim.api.nvim_create_autocmd({ 'User' }, {
  pattern = "SessionLoadPost",
  group = config_group,
  callback = function()
    vim.cmd('ToggleTerm')
    vim.cmd('NvimTreeToggle')
    vim.cmd('wincmd p')
  end,
})
