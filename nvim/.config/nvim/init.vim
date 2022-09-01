" syntax highlighting
syntax on

" enables better colors
set termguicolors

" number of spaces
set tabstop=2
set softtabstop=2
set expandtab

" enable autoindents
set smartindent
set shiftwidth=2

" line numbers
set number
set relativenumber
set numberwidth=4

" highlights matched text pattern while searching
set incsearch
set nohlsearch

" open splits intuitively
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8
set ttyfast

" save undo history
set undofile

" mouse support
set mouse=a

" enable cursor highlighting
set cursorline

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

" disable swapfile
set noswapfile

" disable mode display
set noshowmode

call plug#begin('~/.config/nvim/plugged')
    " Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}

    " NERD Tree
    Plug 'scrooloose/nerdtree'

    " Syntax
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/syntastic'
    Plug 'nvim-treesitter/nvim-treesitter'

    " Startify
    Plug 'mhinz/vim-startify'

    " Fugitive
    Plug 'tpope/vim-fugitive'

    " Colorscheme
    Plug 'rktjmp/lush.nvim'
    Plug 'mcchrish/zenbones.nvim'
    Plug 'FrenzyExists/aquarium-vim'

    " LSP & Language Plugins
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim', {'branch': 'main'}
    Plug 'fatih/vim-go'
    Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

    " Async Run
    Plug 'CRAG666/code_runner.nvim'

    " Lightline
    Plug 'itchyny/lightline.vim'
    
    " Which-Key
    Plug 'folke/which-key.nvim'
call plug#end()

" import init.lua
lua require('khalyl')

" set colorscheme
set background=dark
colorscheme aquarium
