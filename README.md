# dotfiles

All of my dotfiles in one place.

## Setup
### Clone the repo

```
cd $HOME
git clone --recursive https://github.com/aydenjahola/dotfiles.git $HOME/dotfiles
```

### Setup Symlinks

Requires GNU Stow.
```
cd $HOME/dotfiles
# to add all configs:
stow */

#or to add specific configs (e.g. nvim):
stow nvim
```
