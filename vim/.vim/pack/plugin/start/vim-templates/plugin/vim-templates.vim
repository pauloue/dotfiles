function! TempChooser()
    let temp = tempname()
    " 2 cols
    " hide other templates
    exec 'silent !ranger ~/.vim/templates --choosefile=' . shellescape(temp)
    if !filereadable(temp)
        redraw!
        return
    endif
    let name = readfile(temp)
    exec '0r ' . fnameescape(name[0])
    redraw!
endfunction

command! TempChooser call TempChooser()

function! LoadTemplate(extension)
    echo a:extension
endfunction

au BufNewFile *.* call LoadTemplate(expand("<afile>:e"))
