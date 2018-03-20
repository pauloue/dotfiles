# config.fish

set fish_greeting

set -gx EDITOR vim

function fish_prompt
    printf '%s' (prompt_pwd) ' > '
end

alias dnfs "dnf search"
alias dnfu "sudo dnf upgrade"
alias dnfi "sudo dnf install"
alias dnfr "sudo dnf remove"

alias diff "diff --color=auto"
alias bc "bc -lq"
alias notes "ranger --cmd='set column_ratios 1,2' ~/Documents/notes"
alias todo "vim ~/Documents/notes/todo ~/Documents/notes/done-list"

function fish_user_key_bindings
    bind \ef nextd-or-forward-word
    bind \eb prevd-or-backward-word
end

if status is-login
    set -gx PATH ~/bin ~/.local/bin $PATH
    set -gx XKB_DEFAULT_OPTIONS caps:escape

    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        startx
    end
end
