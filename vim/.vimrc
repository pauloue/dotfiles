set nocompatible
set shell=bash
filetype plugin indent on
syntax on
colorscheme base16-materia

set termguicolors
set hidden
set confirm
set title
set laststatus=2
set cmdheight=2
set showcmd
set scrolloff=3
set wildmenu wildignorecase
set mouse=a
set belloff=all
set ttimeoutlen=100
set backspace=indent,eol,start
set number relativenumber
set textwidth=80
set colorcolumn=81
set foldmethod=indent
set nofoldenable
set formatoptions-=t
set formatoptions+=j
set incsearch
set ignorecase smartcase
set spell
set cinoptions+=:0

set shiftwidth=4
set softtabstop=-1
set expandtab
set autoindent

let g:tex_flavor = 'latex'
let g:vcm_direction = 'p'
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0

" <C-L> (redraw screen) also clears search highlighting
nnoremap <silent> <C-L> :noh<CR><C-L>

" Replace word with first spell suggestion
nnoremap <leader>z 1z=

" vimdiff
if &diff
  map <leader>1 :diffget LOCAL<CR>
  map <leader>2 :diffget BASE<CR>
  map <leader>3 :diffget REMOTE<CR>
endif

" General file type settings
au FileType text setl fo+=t
au FileType tex setl fo+=t
au FileType html setl sw=2 fo+=t
au FileType css setl sw=2
au FileType yaml setl sw=2
au FileType c setl noet ts=4
au FileType cpp setl noet ts=4
au FileType python setl tw=79 cc=80
au FileType lua setl noet ts=4
au FileType make setl sw=8
au FileType java setl tw=100 cc=101
au FileType vim setl sw=2

" Automatically resize split windows when Vim is resized
au VimResized * wincmd =

ca vb vert sb
