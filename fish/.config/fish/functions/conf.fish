function conf
    set -l fish ~/.config/fish/config.fish
    set -l git ~/.config/git/config
    set -l i3 ~/.config/i3/config
    set -l sway ~/.config/sway/config
    set -l tmux ~/.tmux.conf
    set -l vim ~/.vimrc

    if test "$argv"
        vim $$argv
    else
        ranger --cmd='set hidden_filter ^\.git(ignore)?$' ~/src/dotfiles
    end
end
