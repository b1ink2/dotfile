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

call plug#begin('~/.vim/plugged')

Plug 'jacoborus/tender.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'

call plug#end()

" THEME
syntax enable
colorscheme tender

let g:airline_theme = 'tender'

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

" LSP
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

