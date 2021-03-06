echo "*** now executing .zshrc"
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="wezm"
#ZSH_THEME="kolo"
#ZSH_THEME="sorin"
#ZSH_THEME="gozilla"
ZSH_THEME="robbyrussell-snolen"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

zstyle ":completion:*:commands" rehash 1

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
#DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  git
  git-extras
  osx
  knife
  docker
  extract
  colorize
  themes
  zsh-syntax-highlighting
  command-not-found
  autojump
  dircycle
  fasd
  lol
  brew
  sprunge
  rvm
  sublime
  sudo
)

source ~/.bash_aliases
source $ZSH/oh-my-zsh.sh

# Better history search
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down]]

# Setup zsh-autosuggestions
source ~/.zsh-autosuggestions/autosuggestions.zsh
# Enable autosuggestions automatically
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init
# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/snolen/.rvm/bin

source ~/.rvm/scripts/rvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

source bin/select_chef.sh
source bin/checksums

eval "$(chef shell-init zsh)"
eval "$(thefuck --alias)"
export CHEF_ENV=sichef-12-devops