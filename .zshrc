### Antigen
# Load up the antigen source
source $(brew --prefix)/share/antigen/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting

# Finish antigen package loading
antigen apply


# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export DEFAULT_USER=wojo

# Set name of the theme to load.
ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

### User configuration

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export UPDATE_ZSH_DAYS=1
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

### Aliases

alias ohmyzsh="mate ~/.oh-my-zsh"
eval "$(thefuck --alias fuck)"
alias vim="nvim"
function chpwd() {ls}
alias git pprint="git log --graph --all --decorate"
alias ag='ag --path-to-agignore ~/.agignore'
alias hotgulp="coffee -c gulpfile.coffee && gulp"
alias delet="rm -rf"

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
