set nocompatible
set shell=bash
filetype plugin indent on
syntax on
colorscheme base16-materia

set termguicolors
set hidden
set confirm
set laststatus=2
set showcmd
set scrolloff=3
set wildmenu wildignorecase
set wildcharm=<C-Z>
set mouse=a
set belloff=all
set ttimeoutlen=100
set bs=indent,eol,start
set number relativenumber
set colorcolumn=81

set shiftwidth=4
set softtabstop=-1
set expandtab
set autoindent

set incsearch
set ignorecase smartcase

let g:tex_flavor = "latex"
let g:bufferline_show_bufnr = 0
let g:bufferline_rotate = 2
let g:vcm_direction='p'

" Fly between buffers
nnoremap <leader>b :b <C-Z><S-Tab>
" Cycle between buffers
nnoremap <leader>n :bn<CR>
nnoremap <leader>N :bp<CR>
" Unload current buffer
nnoremap <silent> <leader>d :bd<CR>

" Quickly edit/source vimrc
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

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

" Automatically resize split windows when Vim is resized
au VimResized * wincmd =

" General file type settings
au FileType text setl spell tw=80
au FileType tex setl spell tw=80
au FileType gitcommit setl spell
au FileType markdown setl spell tw=80
au FileType html setl sw=2 spell tw=80
au FileType css setl sw=2
au FileType yaml setl sw=2
au FileType python setl cc=80
au FileType lua setl noet ts=4

" Read in template files
au BufNewFile *.* sil! exe '0r ~/.vim/templates/skeleton.' . expand("<afile>:e")

au BufEnter /dev/shm/pass.* sil! source ~/.password-store/.vimrc

au BufEnter ~/Documents/notes/* set ft=markdown
au BufEnter ~/Documents/todo/* set ft=markdown

" Abbreviations
ca vb vert sb
