" Use F8 to build, F9 to make, F10 to lint, and F5 to run

let s:commands = {
\ 'c': {
\   'build': 'gcc -Wall -o %:r %',
\   'run': './%:r',
\ },
\ 'cpp': {
\   'build': 'g++ -Wall -o %:r %',
\   'run': './%:r',
\ },
\ 'fish': {
\   'run': 'fish %',
\ },
\ 'java': {
\   'build': 'javac %',
\   'run': 'java %:r',
\ },
\ 'lua': {
\   'lint': 'luacheck %',
\   'run': 'lua %',
\ },
\ 'markdown': {
\   'build': 'pandoc -o %:r.pdf %',
\ },
\ 'markdown.pandoc': {
\   'build': 'pandoc -o %:r.pdf %',
\ },
\ 'python': {
\   'lint': 'pycodestyle %',
\   'run': 'python3 %',
\ },
\ 'sh': {
\   'lint': 'shellcheck %',
\   'run': 'sh %',
\ },
\ 'tex': {
\   'build': 'rubber --inplace -d %',
\ },
\ 'zsh': {
\   'run': 'zsh %',
\ },
\}

function! QuickBuild(action)
  if has_key(s:commands, &ft) && has_key(s:commands[&ft], a:action)
    update
    execute '!' . s:commands[&ft][a:action]
  else
    echo 'No ' . a:action . ' command set'
  endif
endfunction

nnoremap <F8> :<C-U>call QuickBuild('build')<CR>
nnoremap <F10> :<C-U>call QuickBuild('lint')<CR>
nnoremap <F5> :<C-U>call QuickBuild('run')<CR>
nnoremap <F9> :update \| :make<CR>
