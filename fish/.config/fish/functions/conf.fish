function conf
    set -l fish ~/.config/fish/config.fish
    set -l git ~/.config/git/config
    set -l i3 ~/.config/i3/config
    set -l sway ~/.config/sway/config

    if test "$argv"
        vim $$argv
    else
        ranger --cmd='set hidden_filter ^\.git(ignore)?$' ~/src/dotfiles
    end
end
