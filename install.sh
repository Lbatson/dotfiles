#!/bin/bash
echo "Install Xcode CLI tools..."
xcode-select --install

# dotfiles
echo "Symlink files..."
ln -s ~/.dotfiles/.vim ~/.vim
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc

# brew stuff
echo "Install Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
cd ~/.dotfiles
brew bundle
cd ~

# ruby
echo "Install Ruby..."
rbenv install 2.3.3
rbenv global 2.3.3

echo "Install Bundler..."
gem install bundler

echo "Done!" 
