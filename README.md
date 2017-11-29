## Git Notes

* use `git add -f` to add files
* use `git clean -xn` to list untracked files

### Git subtree

For external dependencies such as vim plugins.

Add subtree

    $ git remote add -f <name> <url>
    $ git subtree add -P <path in repo> <name> <branch> --squash

Update subtree

    $ git fetch <name> <branch>
    $ git subtree pull -P <path in repo> <name> <branch> --squash
