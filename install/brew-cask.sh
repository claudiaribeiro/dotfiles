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
  sublime-text-3
  font-fira-code
  visual-studio-code
  skype
)

brew cask install "${apps[@]}"
