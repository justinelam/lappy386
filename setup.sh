cat dot-zshrc >> ~/.zshrc

## INSTALL NVM
## https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

## INSTALL HOMEBREW
## https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

## INSTALL BREW PACKAGES
# optional - python gradle maven
brew install ffmpeg gradle jupyterlab maven starship youtube-dl

## INSTALL CASKS
brew cask install android-studio duet github google-chrome notion oracle-jdk quip slack spotify visual-studio-code vmware-fusion zoomus

## INSTALL CASK FONTS
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro font-hack-nerd-font
