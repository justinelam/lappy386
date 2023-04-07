## COPY DOT-FILES
cat dot-zshrc | tee -a ~/.zshrc
mkdir -p ~/.ssh
cat dotssh-config | tee -a ~/.ssh/config
cat dotgitconfig | tee -a ~/.gitconfig

## INSTALL HOMEBREW
## https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## INSTALL BREW PACKAGES
brew tap homebrew/cask-fonts
brew tap teamookla/speedtest
brew install $(grep -v '#' brews.lst)
brew install --cask $(grep -v '#' casks.lst)

## INSTALL NVM AND NODE
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source .zshrc & nvm install --lts

## INSTALL OH MY ZSH https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
