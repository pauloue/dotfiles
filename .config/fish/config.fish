set fish_greeting

set -gx EDITOR nvim
set -gx GOPATH ~/.local/share/go

if test "$ANDROID_DATA"
    set notesdir ~/notes
else
    set notesdir ~/Documents/notes
end

# Tomorrow Night colors
set -g fish_color_command magenta
set -g fish_color_quote green
set -g fish_color_redirection cyan
set -g fish_color_end magenta
set -g fish_color_error red
set -g fish_color_param blue
set -g fish_color_autosuggestion 969896
set -g fish_color_comment yellow

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
alias notes "ranger $notesdir"
alias todo "vim $notesdir/todo.md"

if status is-login
    if test "$ANDROID_DATA"
        set -gx PATH ~/bin $PATH
    else
        set -gx PATH ~/bin ~/.local/bin ~/.cargo/bin $GOPATH/bin /usr/sbin $PATH
        eval (~/.luarocks/bin/luarocks path)

        if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
            sway
        end
    end
end
