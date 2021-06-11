#!/bin/bash
install_all() {
  install_base
  install_homebrew
  install_xcode
}

install_base() {
  # dotfiles
  echo "Symlink files..."
  ln -s ~/.dotfiles/vim ~/.vim
  ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
  ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc

  # oh-my-zsh
  echo "Install Oh My Zsh..."
  cd ~
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo "Done!" 
}

install_homebrew() {
  # brew stuff
  echo "Install Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "Done!" 
}

install_xcode() {
  # Xcode CLI
  echo "Install Xcode CLI tools..."
  xcode-select --install
  echo "Done!" 
}

