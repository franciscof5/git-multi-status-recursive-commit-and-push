git-multi-status-recursive-commit-and-push
==========

## git-multi-status
Show uncommited changes in git directories and ask if you want to commit and push to origin master

## gacr
The commands simples does
1. Git add --all
2. Git commit -m "YOU ENTER DESCRIPTION IN SHELL"
3. Git push origin master

# Installation

git-multi-status requires a POSIX compliant shell. Bash will do fine.

1. Clone this git repo
2. Copy `git-multi-status` somewhere in your PATH

Or follow these instructions:

    $ curl -s -o git-multi-status (not avaiable yet)
    $ chmod 755 git-multi-status
    $ sudo mv git-multi-status /usr/local/bin/
    $ sudo mv gacr /usr/local/bin/

# Todo

[x] initial recursive directory explorer
[x] prompt to ask to gacr
[ ] prompt to ask git diff

# License

git-multi-status is released under the MIT license.