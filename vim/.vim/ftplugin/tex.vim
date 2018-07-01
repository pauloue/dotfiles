" press <F5> to save and compile
nnoremap <buffer> <F5> :w \| :!clear;rubber --inplace -d "%"<CR>

" open pdf
nnoremap <buffer> <leader>v :!xdg-open "%:r.pdf" &<CR><CR>
