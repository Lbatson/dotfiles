#!/bin/bash
echo "Install Xcode CLI tools..."
xcode-select --install

# dotfiles
echo "Symlink files..."
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc

# brew stuff
echo "Install Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
cd ~/.dotfiles/Homebrew
brew bundle
cd ~

echo "Done!" 
