"--------------------------------
"# Core
"--------------------------------
let mapleader = " "

set number relativenumber
set tabstop=4
set shiftwidth=4
set expandtab

set hlsearch

set clipboard=unnamedplus

"--------------------------------
"# Plugins
"--------------------------------
call plug#begin("~/.vim/plugged")
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()

"--------------------------------
"# Mappings
"--------------------------------

"--------------------------------
"## Insert mode
"--------------------------------
" Save
inoremap <C-s> <Esc>:w<CR>

"--------------------------------
"## Normal mode
"--------------------------------
" --- Core
" Save
nnoremap <C-s> :w<CR>
" Move to left/right/down/up window
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
" Move cursor up/down and center
nnoremap J jzz
nnoremap K kzz
" Quite
nnoremap <C-q><C-q> :q<CR>:q<CR>
" Replace
nnoremap <leader>mw :%s/

" --- Plugin
" Tree
nnoremap <leader>e :NERDTreeFocus<CR>
nnoremap <leader>E :NERDTreeToggle<CR>

"--------------------------------
"## Visual mode
"--------------------------------
vnoremap Y Y:call system("xclip -selection clipboard", @")<CR>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
vnoremap gf *y
vnoremap gr y:%s/<C-r>"//g<Left><Left>

let g:NERDTreeShowHidden = 1
