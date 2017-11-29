" press <F5> to save and execute file
nnoremap <buffer> <F5> :w \| :!clear;python3 "%"<CR>

" press <F9> to save and run pycodestyle linter
nnoremap <buffer> <F9> :w \| :!clear;pycodestyle "%"<CR>
