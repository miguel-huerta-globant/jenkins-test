dotvim
======

$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

inicializarlo:
git submodule update --init bundle/vim-colors-solarized

Actualizar un solo plugin
cd ~/.vim/bundle/fugitive
git pull origin master

Actualizar todos los plugins
git submodule foreach git pull origin master

mkdir $HOME/.backup


oh my fish
=====
curl -L https://github.com/bpinto/oh-my-fish/raw/master/tools/install.fish | fish
ln config.fish  ~/.config/fish/config.fish
