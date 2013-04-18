# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="nanotech"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/opt/local/Library/Frameworks/Python.framework/Versions/2.6/bin:/Users/skyf/npm/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/skyf/bin

. resty

alias jstc="nosy jspackle test --test_args \' --browserTimeout 5000\'"
alias jstd="js-test-driver --port 9876 --runnerMode DEBUG"

alias pp='python -mjson.tool'

alias gst="git status"
alias wip="git commit -am 'wip'"

alias git-clean="git branch --merged master | grep -v 'master$' | xargs git branch -d"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export SBT_OPTS="-XX:MaxPermSize=256m"

function connect () {
    expect -c 'spawn ssh ubuntu@'$@'; expect assword ; send "fe-oc-bav-soyct\n" ; interact'
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
