plugins = {
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
  { 'onsails/lspkind.nvim' },
  { 'windwp/nvim-autopairs', event = "InsertEnter", opts = {}, },
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp"
  },

  -- cmdline
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
      }
  },

  -- trouble.nvim
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },

  -- Comment Lines
  { 'numToStr/Comment.nvim', lazy = false },

  -- Telescope
  { 'nvim-treesitter/nvim-treesitter' },
  { 'nvim-lua/plenary.nvim' },
  { 'nvim-telescope/telescope.nvim',
      tag = '0.1.6',
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
  {
    'stevearc/oil.nvim',
    opts = {
      default_file_explorer = true,
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
        is_always_hidden = function(name, _)
          return name == '..' or name == '.git'
        end,
      },
      win_options = {
        wrap = true,
      }
    },
    config = function()
      map('n', '-', '<CMD>Oil<CR>', { desc = "Open parent directory" })
      return require("oil").setup()
    end,
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  { 'nvim-tree/nvim-web-devicons' },

  -- Statusline
  { 'nvim-lualine/lualine.nvim', config = function()
      return require('config.lualine')
    end
  },

  -- Browse tags in current buffer
  { 'preservim/tagbar'
    -- config = function()
    --   map('n', 'tt', '<CMD>TagBarToggle<CR>');
    --   return require("tagbar").setup()
    -- end,
  },

  -- Language Pack for Syntax Highlighting
  { 'sheerun/vim-polyglot' },

  -- Colors
  { 'sainnhe/everforest' },
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
  { 'TaDaa/vimade' },

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

  -- Leetcode
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim", -- required by telescope
        "MunifTanjim/nui.nvim",

        -- optional
        "nvim-treesitter/nvim-treesitter",
        "rcarriga/nvim-notify",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
      lang = "c",
      arg = "leetnv",
      image_support = true
    },
  },
}

