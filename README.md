# dotfiles

My configuration files, managed with
[GNU Stow](https://www.gnu.org/software/stow/).

## Install

First install stow through your package manager.

Then clone the repo, cd into it and run:

    stow vim sway fish PACKAGE...

This will symlink the packages' configuration files into the parent directory.
Use `-t` to specify a different target directory and `-D` to uninstall the
configuration files for a package.

See [this post](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)
for more info.
