### Antigen
# Antigen is currently unusabley slow, so I've stopped using it for the time being
# Load up the antigen source
#source $(brew --prefix)/share/antigen/antigen.zsh

#antigen bundle zsh-users/zsh-syntax-highlighting

## Finish antigen package loading
#antigen apply


# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export DEFAULT_USER=wojo
ZSH_CUSTOM=$HOME/.zsh_custom

# Set name of the theme to load.
ZSH_THEME="modified-agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

### User configuration

#Source API keys
source ~/.api_keys

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi


export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export PATH=$PATH:/usr/local/share/dotnet
export PATH="$HOME/.fastlane/bin:$PATH"
export UPDATE_ZSH_DAYS=1
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

### Aliases
alias backbrew="brew leaves > ~/.config/brew/packages; echo '\ncasks:\n' >> ~/.config/brew/packages; brew cask list -1 >> ~/.config/brew/packages;"
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim="nvim"
function chpwd() {ls}
alias git pprint="git log --graph --all --decorate"
alias delet="rm -rf"
alias zrc='vim ~/.zshrc'
alias vrc='vim ~/.config/nvim/init.vim'
alias prune="git fetch -p && git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"
function dotnettest() {
  dotnet test --filter “$1”
}
function nrun {
  $(npm bin)/$@
}

# Backing up of dotfiles/configuration
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

# ZSH settings
setopt correct
setopt hist_ignore_all_dups

# Fixes for hyperterm
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
eval $(/usr/libexec/path_helper -s)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Run a backup of brew pacakges every time a terminal is loaded
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
backbrew
launchctl setenv PATH $PATH
