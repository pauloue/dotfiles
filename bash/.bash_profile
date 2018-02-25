# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

export PATH=$HOME/bin:$HOME/.local/bin:$PATH

if [ -z "$DISPLAY" ]; then
    startx
fi
