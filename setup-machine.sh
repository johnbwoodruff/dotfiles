#!/bin/sh

# NOTE: THIS IS A WORK IN PROGRESS

# Install ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Make sure brew is installed
brew="/usr/local/bin/brew"
if [ -f "$brew" ]
then
  echo "Homebrew is installed, nothing to do here"
else
  echo "Homebrew is not installed, installing now"
  echo "This may take a while"
  echo "Homebrew requires osx command lines tools, please download xcode first"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Packages to install with brew
brewpackages=(
  "git"
  "git-extras"
)

# Homebrew installations
for i in "${brewpackages[@]}"
do
  brew install $i
  echo "---------------------------------------------------------"
done

caskpackages=(
  "alfred"
  "google-chrome"
  "firefox"
  "google-hangouts"
  "visual-studio-code"
  "sourcetree"
  "spotify"
)

# Homebrew cask installations
for i in "${caskpackages[@]}"
do
  brew cask install $i
  echo "---------------------------------------------------------"
done

# Install zsh-nvm plugin
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
