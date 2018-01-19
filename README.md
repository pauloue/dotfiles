# Dotfiles

My configuration files, managed with
[GNU Stow](https://www.gnu.org/software/stow/).

## Install

First install stow through your package manager.

Then clone the repo, cd into it and run:

    $ stow bash
    $ stow vim
    $ stow PACKAGE(s)

This will symlink all the package's configuration files into the parent
directory. Use `-t` to specify a different target directory and `-D` to
uninstall the configuration files for a package.

## Git subtree

For external dependencies such as vim plugins.

To add a subtree:

    $ git subtree add -P <path in repo> <url> <branch> --squash

Now normal git commands can be used on the subtree. Commits to the subtree and
main repo should be kept separate. To update the subtree use the same command,
replacing 'add' with 'pull'.
