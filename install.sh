#!/bin/sh
S=`pwd`
D=~

# git extra commands
mkdir -p $D/bin
ln -sf $S/scripts/git-clang-format $D/bin
ln -sf $S/external/ydiff/ydiff $D/bin

# dotfiles
ln -sf $S/files/_vimrc $D/.vimrc
ln -sf $S/files/_screenrc $D/.screenrc
ln -sf $S/files/_tmux.conf $D/.tmux.conf

# alacritty
mkdir -p ~/.config/alacritty
ln -sf $S/external/alacritty-themes ~/.config/alacritty/themes
ln -sf $S/files/alacritty.toml ~/.config/alacritty

# vim pathogen package manager
mkdir -p $D/.vim/autoload
ln -sf $S/external/vim-pathogen/autoload/pathogen.vim $D/.vim/autoload

# vim plugins
mkdir -p $D/.vim/bundle
ln -sf $S/external/vim-nerdtree $D/.vim/bundle/nerdtree
ln -sf $S/external/vim-bookmarks $D/.vim/bundle/bookmarks
ln -sf $S/external/vim-ack $D/.vim/bundle/ack
ln -sf $S/external/vim-bad-whitespace $D/.vim/bundle/bad-whitespace
ln -sf $S/external/vim-gitgutter $D/.vim/bundle/vim-gitgutter
ln -sf $S/external/vim-vue $D/.vim/bundle/vim-vue

# neovim plugin manager (plug.vim)
NVIM_AUTOLOAD="${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload
mkdir -p $NVIM_AUTOLOAD
ln -sf "$S/external/nvim-plug/plug.vim" $NVIM_AUTOLOAD
echo "(nvim) Run :PlugInstall to download/install Neovim plugins"

# neovim configuration
mkdir -p $D/.config/nvim
ln -sf $S/neovim/init.vim $D/.config/nvim
mkdir -p $D/.config/nvim/lua
ln -sf $S/neovim/init.lua $D/.config/nvim/lua
