#!/bin/sh

# Disable "Resume Applications"
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

### Dock
# [Do not] Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Set minimize/maximize windows effect
defaults write com.apple.dock mineffect -string "scale"

# Show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool true

# Enable spring-loading for all items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Make icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Hot Corners: Top-Right -> Start Screen Saver; Bottom-Right -> Disable Screen Saver
defaults write com.apple.dock wvous-tr-corner 5
defaults write com.apple.dock wvous-tr-modifier 0
defaults write com.apple.dock wvous-br-corner 6
defaults write com.apple.dock wvous-br-modifier 0

### Spaces
# Displays have separate Spaces
defaults write com.apple.spaces spans-displays -bool true

# Disable Dashboard
defaults write com.apple.dashboard dashboard-enabled-state -int 1
defaults write com.apple.dashboard enabled-state -bool false

### Screensaver
# Require password after 5 seconds
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 5

# Disable auto-correct
defaults write NSAutomaticSpellingCorrectionEnabled -bool false
