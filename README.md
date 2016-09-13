# dotfiles
Collection of all of my dotfiles and configuration


This backup strategy is collected from [here](https://news.ycombinator.com/item?id=11071754)

## How To...
### Initally Setup
Run the following (I would probably put that alias in an rc)
```
git init --bare $HOME/.myconf
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
config config status.showUntrackedFiles no
```
### Use
Then treat `config` as an alias for git, with the directories being relative to `~/`

```
config add .vimrc
config commit -m "added .vimrc
```
### Clone to new machine
Cloning to a non-empty home directly will fail. The following commands provide a solution to that problem by cloning to a temporary directory first and then moving the files.
```
git clone --separate-git-dir=$HOME/.myconf /path/to/repo $HOME/myconf-tmp
cp ~/myconf-tmp/.gitmodules ~  # If you use Git submodules
rm -r ~/myconf-tmp/
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
```
