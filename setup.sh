## COPY DOT-FILES
## Copy (overwrite) instead of appending so re-running setup.sh is idempotent.
## The old `cat <file> | tee -a` approach is deprecated: dot-zshrc is now a
## complete standalone config, and appending duplicated it on every run.
install_dotfile() {  # install_dotfile <source-in-repo> <dest>
  src="$1"; dest="$2"
  mkdir -p "$(dirname "$dest")"
  if [ -f "$dest" ]; then
    cp "$dest" "$dest.bak.$(date +%Y%m%d%H%M%S)"
    echo "backed up existing $dest"
  fi
  cp "$src" "$dest"
  echo "installed $dest"
}

install_dotfile dot-zshrc      ~/.zshrc
install_dotfile dotssh-config  ~/.ssh/config
install_dotfile dotgitconfig   ~/.gitconfig

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
source ~/.zshrc & nvm install --lts

## INSTALL OH MY ZSH https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
