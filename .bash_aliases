echo "*** now executing .bash_aliases"
alias ls='ls -G'
alias ll='ls -l'
alias l.='ls -a'
alias lr='ls -lart'
alias mount='mount|column -t'

alias ss='ssh -l siadmin'
alias ..='cd ..'
alias cd..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias ginfo='ssh gitolite@git info'
alias less='less -n'
alias gpom='git push origin master'

alias k='kitchen'
alias kl='kitchen list'
alias kc='kitchen converge'
alias kt='kitchen test'
alias kd='kitchen destroy'
alias klo='kitchen login'

# ruby
alias bup='bundle update'
alias be='bundle exec'

# Chef
alias kn='knife node'
alias kns='knife node show'
alias knl='knife node list'
alias kne='knife node edit'

alias sc='select-chef'

alias sourcetree='open -a SourceTree'
alias str='open -a SourceTree'

function goget () { git clone gitolite@git:$@ ;}
function gogetcookbook () { git clone gitolite@git:chef/cookbooks/$@ ;}
funcntion cb () {cd ~/git/cookbooks/$@}

# Awesome
alias dowork="str . && st ."