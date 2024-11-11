autocmd BufWritePost $MYVIMRC source $MYVIMRC

set number
set showmode
set encoding=utf-8
set t_Co=256
set relativenumber
set cursorline
set wrap
set linebreak
set scrolloff=6
set sidescrolloff=10
set ruler
set showmatch
set noswapfile
set hlsearch
set ignorecase
set smartcase
set listchars=tab:»■,trail:■"

" tab

set tabstop=4
set shiftwidth=4
set autoindent

syntax on
filetype indent on

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ghifarit53/tokyonight-vim'
Plug 'jayli/vim-easycomplete'
" Plug 'SirVer/ultisnips'
Plug 'williamboman/nvim-lsp-installer'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

" THEME
syntax enable
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight
let g:airline_theme = "tokyonight"

" LEADER
let mapleader="\<space>"

" MAP
map <leader>r :source $MYVIMRC<CR>
map <leader>w :w<CR>
map <leader>q :q!<CR>
map <leader>n :nohl<CR>
map <leader>e :e
map <leader>pl :PlugInstall<CR>

" NerdTree
map <leader>t :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

" markdown
let g:mkdp_auto_start = 1
let g:mkdp_browser = "firefox"
