" press <F5> to save and execute file
nnoremap <buffer> <F5> :w \| :!clear;lua "%"<CR>

" press <F9> to save and run luacheck linter
nnoremap <buffer> <F9> :w \| :!clear;luacheck "%"<CR>
