## COPY DOT-FILES
cp dot-zshrc >> ~/.zshrc
mkdir -p ~/.ssh
cp dotssh-config >> ~/.ssh/config
cp dottool-versions >> ~/.tool-versions

## INSTALL HOMEBREW
## https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

## INSTALL BREW PACKAGES
brew tap homebrew/cask-fonts
brew tap teamookla/speedtest
brew install $(cat brews.lst)
brew install --cask $(cat casks.lst)

## USE ASDF TO INSTALL TOOLS
asdf plugin add awscli
asdf plugin add nodejs
asdf plugin add python
asdf install
