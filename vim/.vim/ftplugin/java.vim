" press <F5> to save and compile
nnoremap <buffer> <F5> :w \| :!clear;javac "%"<CR>

iab psvm public static void main(String[] args){<CR>}<esc>O
iab sout System.out.println();<esc>hi
