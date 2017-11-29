# Dotfiles

My configuration files, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Install

First install stow through your package manager.

Then clone the repo in your home directory, cd into it and run:

    $ stow bash
    $ stow vim
    $ stow PACKAGE(s)

This will symlink all the package's configuration files into the parent directory. Use the `-D` option to uninstall the configuration files for the package.

See [this post](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) for more info.

## Git subtree

For external dependencies such as vim plugins.

Add subtree

    $ git remote add -f <name> <url>
    $ git subtree add -P <path in repo> <name> <branch> --squash

Now normal git commands can be used on the subtree. Commits to the subtree and main repo should be kept separate.

Update subtree

    $ git fetch <name> <branch>
    $ git subtree pull -P <path in repo> <name> <branch> --squash
