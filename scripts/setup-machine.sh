#!/bin/sh

# Ensure Xcode is installed
if test ! $(which xcode-select); then
    echo "Installing xcode tools..."
    xcode-select --install
fi

# Install ZSH
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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
  "alfred"
  "google-chrome"
  "firefox"
  "visual-studio-code"
  "atom"
  "figma"
  "steam"
  "discord"
  "postman"
  "charles"
  "sourcetree"
  "spotify"
  "slack"
  "bettertouchtool"
  "the-unarchiver"
  "screenflow"
  "switchresx"
  "kap"
  "tableau-public"
  "1password"
)

# Homebrew installations
for i in "${brewpackages[@]}"
do
  brew install $i
  echo "---------------------------------------------------------"
done

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install zsh-nvm plugin
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting

# Install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "**** DONE INSTALLING APPLICATIONS ****"
echo "Remember to install the following manually:"

manualpackages=(
  "Docker for Mac"
  "Fira Code"
  "Day One"
  "AppIcon Generator"
  "Cacher"
  "Sip"
)

# Manual installations
for i in "${manualpackages[@]}"
do
  echo "$i"
done
