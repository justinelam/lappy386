# Overview

Setting up a new laptop for work mostly.

## Run script
`bash setup.sh` to install apps using brew and set up zsh/ssh/git config and nvm.

The dotfile install step is idempotent: `setup.sh` **copies** `dot-zshrc`, `dotssh-config`,
and `dotgitconfig` into place (backing up any existing file to `<file>.bak.<timestamp>`)
rather than appending, so it's safe to re-run.

> Targets **Apple Silicon (arm64)** — Homebrew lives at `/opt/homebrew`.


## Manual installation
[applications](/applications) contains a list of applications to install manually and where to find them.

GPG Keys, export them from your old laptop with the secret keys

## SSH Keys
Create new SSH keys and add them to GitHub, add SSO authorization for your company

Add new Signing key using 1Password and add to .gitconfig file so that you'll see a Verified tag next to your commits

 <img width="428" alt="Screenshot 2023-04-07 at 4 41 24 PM" src="https://user-images.githubusercontent.com/1539045/230692580-24f1c2cc-80bc-463f-b7a2-0a4089d741a8.png">


## ZSH configuration
`dot-zshrc` is a **self-contained** config (no oh-my-zsh required). The prompt is
[starship](https://starship.rs) and plugins are installed from Homebrew (they're in
`brews.lst`), so there's nothing to clone — just install the formulae and reload:

```
$ brew install starship zsh-autosuggestions zsh-syntax-highlighting zoxide
$ source ~/.zshrc
```

What the config sets up:

- **Prompt:** starship (replaces the old oh-my-zsh theme). Configured in
  `starship.toml` (installed to `~/.config/starship.toml`) to show the **full
  working directory** and the **git branch** as plain text (no Nerd Font needed).
- **Directory jumping:** [zoxide](https://github.com/ajeetdsouza/zoxide), aliased to
  `j` so it's a drop-in for the muscle memory from autojump (`j <dir>`); `ji` opens
  an interactive fzf picker.
- **Fuzzy finder:** [fzf](https://github.com/junegunn/fzf) — `Ctrl-R` history search,
  `Ctrl-T` file picker, `Alt-C` cd; also powers zoxide's `ji`.
- **Autosuggestions** (`zsh-autosuggestions`) and **syntax highlighting**
  (`zsh-syntax-highlighting`, sourced last, as required).
- **Keybindings:** forces the emacs keymap (`bindkey -e`) and explicitly binds
  `Ctrl-A`/`Ctrl-E` to beginning/end of line — fixes Ctrl-A breaking when the shell
  lands in vi mode.
- **iTerm2 shell integration** is sourced if present (`~/.iterm2_shell_integration.zsh`).
- Version managers `rbenv` and `nvm` are loaded if installed.

All `source` lines are guarded, so a fresh machine won't error before the tools are
installed. `compinit -i` skips insecure completion dirs instead of prompting.

## Localhosts files
Add app for switching between localhosts files. Gas mask doesn't work with m2 chip

Might be outdated configs:
https://github.com/opentable/OTEnvironmentHosts/blob/master/hosts_preprod
https://github.com/opentable/OTEnvironmentHosts/blob/master/hosts_production
