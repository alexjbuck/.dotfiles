# Dotfiles repo


## To initialize on a new machine:

```
git clone --separate-git-dir=~/.dotfiles $HOME
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

## To initialize a new dotfile repository for yourself.

```
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config status.showUntrackedFiles no
```

This creates a bare repository at `$HOME/.dotfiles` and creates an alias to simplify adding files to that .git repo that are _not_ in the repo folder.
The repository is managed out of the `$HOME/.dotfiles` folder but you can add whichever files from you `$HOME` directory that you wish to.

```
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Add vimrc"
dotfiles add .config/redshift.conf
dotfiles commit -m "Add redshift config"
dotfiles push
```


## Included Packages

#### NERDTree

https://github.com/preservim/nerdtree

#### vim-surround

https://github.com/tpope/vim-surround

#### vim-fugitive

https://github.com/tpope/vim-fugitive



## Reference:

[StreakyCobra](https://news.ycombinator.com/user?id=StreakyCobra) on [Hacker News](https://news.ycombinator.com/item?id=11071754)

