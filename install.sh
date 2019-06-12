#!/bin/sh
S=`pwd`
D=~

# git extra commands
mkdir -p $D/bin
ln -sf $S/scripts/git-clang-format $D/bin

# dotfiles
ln -sf $S/files/_vimrc $D/.vimrc
ln -sf $S/files/_screenrc $D/.screenrc

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
