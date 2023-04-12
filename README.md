# Overview

Setting up a new laptop for work mostly.

## Run script
`bash setup.sh` to install apps using brew and setting up zsh config and nvm


## Manual installation
[applications](/applications) contains a list of applications to install manually and where to find them.

GPG Keys, export them from your old laptop with the secret keys

## SSH Keys
Create new SSH keys and add them to GitHub, add SSO authorization for your company

Add new Signing key using 1Password and add to .gitconfig file so that you'll see a Verified tag next to your commits

 <img width="428" alt="Screenshot 2023-04-07 at 4 41 24 PM" src="https://user-images.githubusercontent.com/1539045/230692580-24f1c2cc-80bc-463f-b7a2-0a4089d741a8.png">


## ZSH configuration
It'll complain that we're missing some plugins so you'll have to clone them into this folder

```
$ git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

$ source ~/.zshrc
```

## Localhosts files
Add app for switching between localhosts files. Gas mask doesn't work with m2 chip

Might be outdated configs:
https://github.com/opentable/OTEnvironmentHosts/blob/master/hosts_preprod
https://github.com/opentable/OTEnvironmentHosts/blob/master/hosts_production
