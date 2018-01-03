# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions

# Green prompt
PS1="\[$(tput setaf 10)\]$PS1\[$(tput sgr0)\]"

export VISUAL="vim"
export EDITOR="$VISUAL"

export GPGKEY=6525CDAF9FC4718E

alias diff="diff --color=auto"
alias ll="ls -l --group-directories-first"
alias la="ls -lA --group-directories-first"
alias dnfs="dnf search"
alias dnfu="sudo dnf upgrade"
alias dnfi="sudo dnf install"
alias dnfr="sudo dnf remove"
alias bc="bc -lq"
alias notes="ranger --cmd='set column_ratios 1,2' ~/Documents/notes"
alias calc="calcurse"
alias events="calcurse -d 7"
alias todo="calcurse -t"

conf() {
    case $1 in
        bash ) vim ~/.bashrc ;;
        git ) vim ~/.config/git/config ;;
        sway ) vim ~/.config/sway/config ;;
        * ) ranger --cmd='set hidden_filter ^\.git$|^\.gitignore$' ~/dotfiles ;;
    esac
}
