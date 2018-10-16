set fish_greeting

set -gx EDITOR vim

function fish_prompt
    printf '%s' (prompt_pwd) ' > '
end

function fish_user_key_bindings
    bind \er "ranger; fish_prompt"
end

alias v "$EDITOR"
alias dnfs "dnf search"
alias dnfu "sudo dnf upgrade"
alias dnfi "sudo dnf install"
alias dnfr "sudo dnf remove"

alias diff "diff --color=auto"
alias notes "ranger ~/Documents/notes"
alias todo "ranger ~/Documents/todo"

if status is-login; and test -z "$ANDROID_DATA"
    set -gx PATH ~/bin ~/.local/bin /usr/sbin $PATH
    set -gx XKB_DEFAULT_OPTIONS caps:escape

    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1 -a "$TERM" != screen
        sway
    end
end
