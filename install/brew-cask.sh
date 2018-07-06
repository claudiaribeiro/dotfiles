if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  google-chrome
  alfred
  atom-beta
  dash2
  dropbox
  firefox
  font-fira-code
  iterm2
  slack
  sourcetree
  spotify
  sublime-text
  visual-studio-code
  vlc
)

brew cask install "${apps[@]}"
