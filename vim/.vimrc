set nocompatible
filetype plugin indent on
syntax on
colorscheme base16-materia

set termguicolors       " Use true colors
set hidden              " Don't unload buffer when switched away
set confirm             " Show dialog when command fails
set laststatus=2        " Always show status line
set showcmd             " Show partial commands
set wildmenu            " Show tab completion menu
set wildignorecase      " Ignore case when completing file names
set mouse=a             " Enable mouse
set belloff=all         " Disable beeping
set number              " Show line numbers
set colorcolumn=80      " Highlight 80th column
set bs=indent,eol,start " Allow backspacing over everything in insert mode
set scrolloff=5         " Show 5 lines around the cursor
set wildcharm=<C-Z>     " Key to trigger expansion in mappings
set ttimeoutlen=100     " Wait up to 100ms after Esc for special key

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

" Insert date
nmap <leader>f "=strftime('%F')<CR>p

" Automatically resize split windows when Vim is resized
au VimResized * wincmd =

" General file type settings
au FileType css setl sw=2
au FileType html setl sw=2 spell
au FileType markdown setl spell tw=79
au FileType gitcommit setl spell

augroup Templates
    au!
    " Read in template files
    au BufNewFile *.* sil! exe '0r ~/.vim/templates/skeleton.'.expand("<afile>:e")
    au BufNewFile ~/cs2017-18/*.py %d | 0r ~/.vim/templates/cs-2.py
    " Evaluate commands between [[ and ]] in templates
    " http://vim.wikia.com/wiki/Use_eval_to_create_dynamic_templates
    au BufNewFile * %substitute#\[\[\(.\{-\}\)\]\]#\=eval(submatch(1))#ge
    " Move cursor to end of file
    au BufNewFile * norm G
augroup END

" Use markdown for notes
au BufEnter /tmp/calcurse-note.*,~/Documents/notes/* set ft=markdown

" Settings for pass
if filereadable("/home/paul/.password-store/.vimrc")
    au BufEnter /dev/shm/pass.* source ~/.password-store/.vimrc
endif

" Abbreviations
ia teh the

ca vb vert sb
