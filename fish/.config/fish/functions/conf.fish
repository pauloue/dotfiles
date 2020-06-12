function conf
    switch "$argv"
        case alacritty; $EDITOR ~/.config/alacritty/alacritty.yml
        case fish;      $EDITOR ~/.config/fish/config.fish
        case git;       $EDITOR ~/.config/git/config
        case sway;      $EDITOR ~/.config/sway/config
        case vim;       $EDITOR ~/.vimrc
        case '*'
            ranger --cmd='set hidden_filter ^\.git(ignore)?$' ~/src/dotfiles
    end
end
