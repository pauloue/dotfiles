# config.fish

set fish_greeting

set -gx EDITOR vim

function fish_prompt
    printf '%s' (prompt_pwd) ' > '
end

alias diff "diff --color=auto"
alias dnfs "dnf search"
alias dnfu "sudo dnf upgrade"
alias dnfi "sudo dnf install"
alias dnfr "sudo dnf remove"
alias bc "bc -lq"
alias notes "ranger --cmd='set column_ratios 1,2' ~/Documents/notes"
alias todo "vim ~/Documents/notes/todo ~/Documents/notes/done-list"

if status is-login
    set -gx PATH ~/bin ~/.local/bin $PATH
    set -gx XKB_DEFAULT_OPTIONS caps:escape

    if test -z "$DISPLAY"
        startx
    end
end
