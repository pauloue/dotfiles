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
set wildcharm=<C-Z>
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

set shiftwidth=4
set softtabstop=-1
set expandtab
set autoindent

let g:tex_flavor = 'latex'
let g:vcm_direction = 'p'

" Fly between buffers
nnoremap <leader>b :b <C-Z><S-Tab>
" Cycle between buffers
nnoremap <C-J> :bn<CR>
nnoremap <C-K> :bp<CR>
" Unload current buffer
nnoremap <silent> <leader>d :bd<CR>

" Edit vimrc
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>

" <C-L> (redraw screen) also clears search highlighting
nnoremap <silent> <C-L> :noh<CR><C-L>

" <F2> toggles spellcheck on/off
nnoremap <silent> <F2> :setlocal spell! spell?<CR>
" Replace word with first spell suggestion
nnoremap <leader>z 1z=

" Insert date
nnoremap <leader>f "=strftime('%F')<CR>p

" vimdiff
if &diff
  map <leader>1 :diffget LOCAL<CR>
  map <leader>2 :diffget BASE<CR>
  map <leader>3 :diffget REMOTE<CR>
endif

" General file type settings
au FileType text,tex setl fo+=t
au FileType html setl sw=2 fo+=t
au FileType css setl sw=2
au FileType yaml setl sw=2
au FileType python setl tw=79 cc=80
au FileType lua setl noet ts=4
au FileType make setl sw=8
au FileType java setl tw=100 cc=101
au FileType vim setl sw=2

" Read in template files
au BufNewFile *.* sil! exe '0r ~/.vim/templates/skeleton.' . expand("<afile>:e")

" Automatically resize split windows when Vim is resized
au VimResized * wincmd =

au BufEnter /dev/shm/pass.* sil! source ~/.password-store/.vimrc
au BufEnter ~/Documents/notes/*,~/Documents/todo/* set ft=markdown

" Abbreviations
ca vb vert sb
