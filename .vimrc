set nocompatible
filetype plugin indent on
syntax on
colorscheme base16-tomorrow-night

set termguicolors
set hidden
set confirm
set title
set laststatus=2
set cmdheight=2
set showcmd
set scrolloff=3
set wildmenu wildignorecase wildmode=longest:full,full
set number relativenumber
set splitbelow splitright
set mouse=a
set belloff=all
set ttimeoutlen=100
set backspace=indent,eol,start
set textwidth=80
set colorcolumn=81
set foldmethod=syntax foldlevelstart=99
set conceallevel=2
set formatoptions-=t
set formatoptions+=j
set nojoinspaces
set incsearch
set ignorecase smartcase
set spell
set cinoptions+=:0
set completeopt+=menuone,noselect
set langmap=АБЦДЕФГХИЙКЛМНОПЯРСТУЖВЬЫЗ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,абцдефгхийклмнопярстужвьыз;abcdefghijklmnopqrstuvwxyz

set shiftwidth=0
set softtabstop=-1
set autoindent

let c_no_comment_fold = 1
let c_no_curly_error = 1
let paredit_shortmaps = 1
let rustfmt_autosave = 1
let tex_flavor = 'latex'
let vim_markdown_auto_insert_bullets = 0
let vim_markdown_frontmatter = 1
let vim_markdown_new_list_item_indent = 0

" Yank/put to/from system clipboard
noremap <leader>y "+y
noremap <leader>p "+p
noremap <leader>P "+P

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

cnoremap <C-A> <Home>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>

tnoremap <Esc> <C-\><C-n>

ca vb vert sb

" General file type settings
au FileType c setl ts=4
au FileType conf setl et sw=4
au FileType cpp setl ts=4
au FileType css setl et sw=2
au FileType fish setl et sw=4
au FileType gitcommit setl et sw=4
au FileType go setl ts=4 fo+=ro
au FileType html setl et sw=2 fo+=t
au FileType java setl ts=4 tw=100 cc=101
au FileType lisp setl et sw=2
au FileType lua setl et sw=3
au FileType mail setl et sw=4
au FileType markdown setl et sw=4
au FileType ocaml setl sw=2
au FileType python setl tw=79 cc=80
au FileType rust setl cc=100
au FileType sql setl et sw=4
au FileType tex setl et sw=2 fo+=t
au FileType text setl et sw=4 fo+=t
au FileType vim setl et sw=2
au FileType yaml setl et sw=2

if has('nvim')
  au TermOpen * setl nospell
else
  au TerminalOpen * setl nospell
endif

" Automatically resize split windows when Vim is resized
au VimResized * wincmd =
