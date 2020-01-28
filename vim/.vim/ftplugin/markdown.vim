" Open PDF
nnoremap <buffer> <F5> :!gio open %:r.pdf &<CR><CR>

" Make the current line a 1st or 2nd level heading
nnoremap <buffer> <leader>h1 yypVr=
nnoremap <buffer> <leader>h2 yypVr-
