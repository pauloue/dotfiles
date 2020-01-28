" Press F5 to save and open in web browser
if &ft == 'html' " Excludes markdown files
  nnoremap <buffer> <F5> :w \| :!gio open %<CR><CR>
endif
