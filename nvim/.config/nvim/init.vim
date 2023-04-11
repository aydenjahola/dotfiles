" Ayden vimrc config

filetype plugin on
filetype indent on
syntax on

set spell
set tabstop=4
set shiftwidth=4
set expandtab
set number
set autoindent
set mouse=a
set smarttab
set noswapfile
set nobackup
set smartindent
set hidden
set cmdheight=1
set termguicolors
set ignorecase
set nocompatible

highlight Normal guibg=none

let mapleader=" "

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWritePre * : %s/\s\+$//e  "remove white space trail on save

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/glepnir/dashboard-nvim'
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/manzeloth/live-server'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'https://github.com/haringsrob/nvim_context_vt'
Plug 'sbdchd/neoformat' " usage: Neoformat
Plug 'github/copilot.vim'
Plug 'samirettali/shebang.nvim'
Plug 'preservim/vim-markdown'

call plug#end()

let g:vimwiki_list = [{'path': '~/dcu/vimwiki',
                      \ 'path_html': '~/dcu/vimwiki_html'}]




" Vim nerdtree binding
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
