export ZSH=~/.oh-my-zsh
export DEFAULT_USER=wojo
export PYENV_ROOT="$HOME/.pyenv"
export UPDATE_ZSH_DAYS=1

export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export PATH=$PATH:/usr/local/share/dotnet
export PATH="$HOME/.fastlane/bin:$PATH"
# Subverts pythons shims when using brew
# https://github.com/pyenv/pyenv/issues/106
  export PATH="${HOME}/bin:${PATH}"
export PATH="$PATH:$HOME/.rvm/bin" # Must be last path change
export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"

export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/libffi/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/qt/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/nss/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/libxml2/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/icu4c/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/sqlite/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/readline/lib/pkgconfig"

# Check compinit once a day instead of every launch
##compinit
autoload -Uz compinit

for dump in ~/.zcompdump(N.mh+24); do
  compinit
done

compinit -C
#/compinit


ZSH_CUSTOM=$HOME/.zsh_custom
ZSH_THEME="modified-agnoster"

plugins=(git)

setopt correct
setopt hist_ignore_all_dups

source ~/.api_keys

export EDITOR='vim'
export HOMEBREW_INSTALL_CLEANUP='1'

COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh
#defaults write -g InitialKeyRepeat -int 5 # normal minimum is 15 (225 ms)
#defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

### Aliases
alias ohmyzsh="mate ~/.oh-my-zsh"
alias backbrew="brew leaves > ~/.config/brew/packages; echo '\ncasks:\n' >> ~/.config/brew/packages; brew cask list -1 >> ~/.config/brew/packages;"
alias brewup='brew update; brew upgrade; brew doctor'
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias git pprint="git log --graph --all --decorate"
alias git prune="git fetch -p && git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"
alias zrc='vim ~/.zshrc'
alias szrc='source ~/.zshrc'
alias vrc='vim ~/.config/nvim/init.vim'
alias vim="nvim"
alias sl="ls"
alias big="du -h -d 1 | gsort -hr"

function chpwd() {ls}
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
eval "$(rbenv init -)"


##NVM lazyload
declare -a NODE_GLOBALS=(`find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)

NODE_GLOBALS+=("node")
NODE_GLOBALS+=("nvm")

load_nvm () {
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
}

for cmd in "${NODE_GLOBALS[@]}"; do
    eval "${cmd}(){ unset -f ${NODE_GLOBALS}; load_nvm; ${cmd} \$@ }"
done
#/NVM lazyload

backbrew
