# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="blinks"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow git-extras grails vi-mode tmux tmuxinator taskwarrior)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...#sharing the history of the shells across your sessions
export PATH=$HOME/.gvm/groovy/current/bin:$HOME/.gvm/grails/current/bin:$HOME/.gvm/griffon/current/bin:$HOME/.gvm/gradle/current/bin:.$HOME/.gvm/vertx/current/bin:$HOME/.gvm/bin:$HOME/.gvm/ext:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:~/bin

#export JAVA_HOME=/usr/lib/jvm/java-7-oracle/
export JAVA_HOME=$(/usr/libexec/java_home)
source ~/.gvm/bin/gvm-init.sh
#sharing the history of the shells across your sessions
setopt SHARE_HISTORY
stty -ixon -ixoff
alias tmux="TERM=screen-256color-bce tmux"
alias tmuxinator="TERM=screen-256color-bce tmuxinator"

export EDITOR=vim
