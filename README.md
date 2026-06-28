# dotfiles

## Install

```sh
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --apply git@github.com:enyhma/dotfiles.git
```

This installs [chezmoi](https://chezmoi.io) and applies the dotfiles in one step.

## First run (macOS)

Homebrew is installed automatically on first `chezmoi apply` if not already present. Packages defined in `.chezmoidata/packages.yml` are installed via `brew install` / `brew install --cask`.
