## COPY DOT-FILES
cat dot-zshrc >> ~/.zshrc
mkdir -p ~/.ssh
cat dotssh-config >> ~/.ssh/config

## INSTALL NVM
## https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

## INSTALL HOMEBREW
## https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

## INSTALL BREW PACKAGES
brew tap homebrew/cask-fonts
brew tap teamookla/speedtest
brew install $(cat brews)
