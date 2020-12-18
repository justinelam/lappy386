cat dot-zshrc >> ~/.zshrc

## INSTALL NVM
## https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

## INSTALL HOMEBREW
## https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

## INSTALL BREW PACKAGES
# optional - python gradle maven
brew install $(cat brews)
