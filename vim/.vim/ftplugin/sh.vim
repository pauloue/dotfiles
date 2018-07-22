" press <F5> to save and execute file
nnoremap <buffer> <F5> :w \| :!clear;sh "%"<CR>

" press <F9> to save and run shellcheck
nnoremap <buffer> <F9> :w \| :!clear;shellcheck "%"<CR>
