# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish
#
set --export EDITOR "vim -f"
set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)
set vi_mode_default vi_mode_normal
set -x DOCKER_HOST tcp://192.168.59.103:2375
set --universal fish_user_paths /usr/local/bin $fish_user_paths


# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

Theme "coffeeandcode"

Plugin "vi-mode" 
Plugin "gvm" 
Plugin "tmux" 
Plugin "brew"

set PATH $PATH (find ~/.gvm/*/current/bin -maxdepth 0)
