export ZSH=~/.oh-my-zsh
export DEFAULT_USER=wojo
export PYENV_ROOT="$HOME/.pyenv"
export UPDATE_ZSH_DAYS=1

export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export PATH=$PATH:/usr/local/share/dotnet
export PATH="$HOME/.fastlane/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
export PATH="$PATH:$HOME/.rvm/bin" # Must be last path change

ZSH_CUSTOM=$HOME/.zsh_custom
ZSH_THEME="modified-agnoster"

plugins=(git)

setopt correct
setopt hist_ignore_all_dups

source ~/.api_keys

if [[ -n $SSH_CONNECTION ]]; then
 export EDITOR='vim'
else
 export EDITOR='nvim'
fi


COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

### Aliases
alias ohmyzsh="mate ~/.oh-my-zsh"
alias backbrew="brew leaves > ~/.config/brew/packages; echo '\ncasks:\n' >> ~/.config/brew/packages; brew cask list -1 >> ~/.config/brew/packages;"
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias git pprint="git log --graph --all --decorate"
alias git prune="git fetch -p && git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"
alias zrc='vim ~/.zshrc'
alias szrc='source ~/.zshrc'
alias vrc='vim ~/.config/nvim/init.vim'
alias vim="nvim"
alias sl="ls"

function chpwd() {ls}
function dotnettest { dotnet test --filter “$1” }
function nrun { $(npm bin)/$@ }
function dsf { git diff --no-index --color "$@" | diff-so-fancy }

function update() {
    echo "$fg[cyan]Updating homebrew packages...$reset_color"
    brewup

    echo "$fg[cyan]Updating node packages...$reset_color"
    yarn global upgrade --latest

    echo "$fg[cyan]Updating vim plugins...$reset_color"
    vim +PlugUpdate +PlugUpgrade +qa

    echo "$fg[cyan]Updating ruby gems...$reset_color"
    gem update
    gem cleanup

    echo "$fg[cyan]Upgrade cask packages...$reset_color"
    brew cu --all --cleanup -q -y
  }


eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
. "/usr/local/opt/nvm/nvm.sh"

backbrew
launchctl setenv PATH $PATH
