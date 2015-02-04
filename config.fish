# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme coffeeandcode

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins vi-mode gvm tmux brew

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
