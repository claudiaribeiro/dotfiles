#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Sublime Text.app"
dockutil --no-restart --add "/Applications/iTerm2.app"
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Spotify.app"

killall Dock
