#!/bin/bash
install_all() {
  install_base
  install_homebrew
  install_xcode
}

install_base() {
  # oh-my-zsh
  echo "Install Oh My Zsh..."
  cd ~
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo "Done!" 

  # dotfiles
  echo "Symlink files..."
  rm ~/.zshrc
  ln -s ~/.dotfiles/vim ~/.vim
  ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
  ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
  ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
  echo "Done!"
}

install_homebrew() {
  # brew stuff
  echo "Install Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "Done!" 
}

install_xcode() {
  # Xcode CLI
  echo "Install Xcode CLI tools..."
  xcode-select --install
  echo "Done!" 
}

