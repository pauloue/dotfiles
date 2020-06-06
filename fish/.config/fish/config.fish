set fish_greeting

set -gx EDITOR nvim
set -gx GOPATH ~/.local/share/go

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

alias diff "diff --color"
alias gdb "gdb -q"
alias vim nvim
alias notes "ranger ~/Documents/notes"
alias todo "vim ~/Documents/notes/todo.md"

if status is-login
    set -gx PATH ~/bin ~/.local/bin ~/.cargo/bin /usr/sbin $PATH
    eval (~/.luarocks/bin/luarocks path)

    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        sway
    end
end
