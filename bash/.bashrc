# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export EDITOR="vim"

alias diff="diff --color=auto"
alias ll="ls -lh"
alias la="ls -lah"
alias dnfs="dnf search"
alias dnfu="sudo dnf upgrade"
alias dnfi="sudo dnf install"
alias dnfr="sudo dnf remove"
alias bc="bc -lq"
alias notes="ranger --cmd='set column_ratios 1,2' ~/Documents/notes"
alias todo="vim ~/Documents/notes/todo ~/Documents/notes/done-list"
