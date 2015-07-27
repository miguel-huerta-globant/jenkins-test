ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install vim
brew install fish
brew install wget
brew install git-extras

git clone git@github.com:hgmiguel/dotvim.git $HOME/.vim
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
git clone git@github.com:altercation/solarized.git

ln -s $HOME/.vim/config.fish  $HOME/.config/fish/config.fish
ln -s $HOME/.vim/vimrc $HOME/.vimrc
ln -s $HOME/.vim/tmux.conf $HOME/.tmux.conf
ln -s $HOME/.vim/gitconfig $HOME/.gitconfig

