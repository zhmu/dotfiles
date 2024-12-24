set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

" set loaded_netrw = 1
" set loaded_netrwPlugin = 1

" Run :PlugInstall() / :Plug
call plug#begin()
" Color schemas
Plug 'junegunn/seoul256.vim'
Plug 'ajmwagar/vim-deus'
Plug 'AlessandroYorba/Alduin'
Plug 'romainl/flattened'
"
Plug 'petertriho/nvim-scrollbar'
Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'nvim-tree/nvim-tree.lua'          " :NvimTreeOpen
Plug 'feline-nvim/feline.nvim'
Plug 'echasnovski/mini.trailspace'
Plug 'RRethy/vim-illuminate'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'echasnovski/mini.indentscope'
Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()
colorscheme deus

lua require('init')
