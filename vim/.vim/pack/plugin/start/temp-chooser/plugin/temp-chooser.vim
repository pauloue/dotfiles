" Add a :Templates command for choosing a template
"
" Executing the command will open ranger in ~/.vim/templates. If a file is
" opened, its contents are copied to the current file.

function! TempChooser()
  let temp = tempname()
  exec 'silent !ranger --cmd="set column_ratios 1,2" ~/.vim/templates --choosefile=' . shellescape(temp)
  if !filereadable(temp)
    redraw!
    return
  endif
  let name = readfile(temp)
  exec '0r ' . fnameescape(name[0])
  redraw!
endfunction

command! -bar Templates call TempChooser()
