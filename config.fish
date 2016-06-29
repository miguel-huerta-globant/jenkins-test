# Path to Oh My Fish install.
set -gx OMF_PATH "$HOME/.local/share/omf"

set -gx JAVA_HOME "/usr/lib/jvm/java-7-openjdk-amd64"
# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/hgmiguel/.config/omf"


# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish
#
set --export EDITOR "vim -f"
#set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)
set vi_mode_default vi_mode_normal

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

alias tmux "env TERM=screen-256color-bce tmux"

set PATH $PATH (find ~/.gvm/*/current/bin -maxdepth 0)
