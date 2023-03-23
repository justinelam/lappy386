## COPY DOT-FILES
cat dot-zshrc >> ~/.zshrc
mkdir -p ~/.ssh
cat dotssh-config >> ~/.ssh/config
cat dottool-versions >> ~/.tool-versions

## INSTALL HOMEBREW
## https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## ADD HOMEBREW TO PATH
(echo; echo 'eval "$(/usr/local/bin/brew shellenv)"') >> /Users/christopher/.zprofile
eval "$(/usr/local/bin/brew shellenv)"

## INSTALL BREW PACKAGES
brew tap homebrew/cask-fonts
brew tap teamookla/speedtest
brew install $(grep -v '#' brews.lst)
brew install --cask $(grep -v '#' casks.lst)

## INSTALL NVM AND NODE
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source .zshrc & nvm install --lts

