#!/bin/sh

# New windows open in home directory
defaults write com.apple.finder NewWindowTarget -string "PfHm"

# Show hidden files
#defaults write com.apple.finder AppleShowAllFiles -bool true

# Show Status Bar and Path Bar
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true

# Search in current directory by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true
