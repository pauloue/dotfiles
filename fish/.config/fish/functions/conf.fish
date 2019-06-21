function conf
    set -l fish ~/.config/fish/config.fish
    set -l git ~/.config/git/config
    set -l sway ~/.config/sway/config
    set -l tmux ~/.tmux.conf
    set -l vim ~/.vimrc

    if test "$argv"
        $EDITOR $$argv
    else
        ranger --cmd='set hidden_filter ^\.git(ignore)?$' ~/src/dotfiles
    end
end
