if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
  echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
  return
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install packages

apps=(
  python
  sqlite
  redis
  bash-completion2
  coreutils
  git
  git-extras
  grep --with-default-names
  imagemagick
  wget
  wifi-password
  vim
  yarn
  qt@5.5
  mysql
  postgresql
  elasticsearch
  heroku
  hub
  zsh
  node
  curl
  dockutil
)

brew install "${apps[@]}"

export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"
