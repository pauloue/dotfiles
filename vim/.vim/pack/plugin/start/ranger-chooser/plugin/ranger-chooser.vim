" Add ranger as a file chooser in vim
"
" Ranger can be started using the keybinding <leader>r". Once you select
" one or more files, press enter to open them.

function! RangeChooser()
  let temp = tempname()
  exec 'silent !ranger --choosefiles=' . shellescape(temp)
  if !filereadable(temp)
    redraw!
    return
  endif
  let names = readfile(temp)
  " Edit first item
  exec 'edit ' . fnameescape(names[0])
  " Add remaning items to buffer list
  for name in names[1:]
    exec 'argadd ' . fnameescape(name)
  endfor
  redraw!
endfunction

nnoremap <leader>r :<C-U>call RangeChooser()<CR>
