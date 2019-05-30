set fish_greeting

set -gx EDITOR vim

function fish_prompt
    printf '%s' (prompt_pwd) ' > '
end

function fish_user_key_bindings
    bind \er "ranger; fish_prompt"
end

alias dnfs "dnf search"
alias dnfu "sudo dnf upgrade"
alias dnfi "sudo dnf install"
alias dnfr "sudo dnf remove"

alias diff "diff --color=auto"
alias vim vimx
alias notes "ranger ~/Documents/notes"
alias todo "vim ~/Documents/notes/todo.md"

if status is-login
    set -gx PATH ~/.luarocks/bin ~/bin ~/.cargo/bin ~/.local/bin /usr/sbin $PATH
    eval (luarocks path)

    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        sway
    end
end
