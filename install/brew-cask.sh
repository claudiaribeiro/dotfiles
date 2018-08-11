if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  iterm2
  atom-beta
  sublime-text-3
  dropbox
  font-fira-code
  slack
  spotify
  visual-studio-code
  vlc
  telegram
  notion
  skype
  postman
)

brew cask install "${apps[@]}"
