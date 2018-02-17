set nocompatible
filetype plugin indent on
syntax on
colorscheme base16-materia

set termguicolors       " Use true colors
set hidden              " Don't unload buffer when switched away
set confirm             " Show dialog when command fails
set laststatus=2        " Always show status line
set showcmd             " Show partial commands
set scrolloff=5         " Show 5 lines around the cursor
set wildmenu            " Show tab completion menu
set wildignorecase      " Ignore case when completing file names
set wildcharm=<C-Z>     " Key to trigger expansion in mappings
set mouse=a             " Enable mouse
set belloff=all         " Disable beeping
set ttimeoutlen=100     " Decrease Esc delay
set bs=indent,eol,start " Allow backspacing over everything in insert mode
set number              " Show line numbers
set colorcolumn=81      " Highlight 81st column

set shiftwidth=4        " Use 4 spaces for indent
set softtabstop=-1      " Backspace deletes shiftwidth spaces
set expandtab           " Expand tabs to spaces
set autoindent          " Auto indent new lines

set incsearch           " Show search results as you type
set ignorecase          " Search is case insensitive
set smartcase           " except when using capital letters

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
" Save and unload current buffer
nnoremap <silent> <leader>D :w \| bd<CR>

" Quickly edit/source vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" <C-L> (redraw screen) also clears search highlighting
nnoremap <silent> <C-L> :nohl<CR><C-L>

" <F2> toggles spellcheck on/off
nmap <silent> <F2> :setlocal spell! spell?<CR>
" Replace word with first spell suggestion
nmap <leader>s 1z=

" Insert date
nmap <leader>f "=strftime('%F')<CR>p

" Automatically resize split windows when Vim is resized
au VimResized * wincmd =

" General file type settings
au FileType gitcommit setl spell
au FileType python setl cc=80
au FileType html setl sw=2 spell tw=80
au FileType css setl sw=2
au FileType markdown setl spell tw=80
au FileType lua setl noexpandtab sw=0

" Read in template files
au BufNewFile *.* sil! exe '0r ~/.vim/templates/skeleton.'.expand("<afile>:e") | norm G

" Use markdown for notes
au BufEnter /tmp/calcurse-note.*,~/Documents/notes/* set ft=markdown

" Settings for pass
if filereadable("/home/paul/.password-store/.vimrc")
    au BufEnter /dev/shm/pass.* source ~/.password-store/.vimrc
endif

" Abbreviations
ia teh the

ca vb vert sb
