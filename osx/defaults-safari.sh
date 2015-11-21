#!/bin/sh

# Privacy
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# [Don't] Open "safe" files after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
defaults write com.apple.Safari TargetedClicksCreateTabs -bool true
defaults write com.apple.Safari AlwaysRestoreSessionAtLaunch -bool true

# Hide Bookmarks Bar
defaults write com.apple.Safari ShowFavoritesBar -bool false

defaults write com.apple.Safari WebKitDefaultTextEncodingName "utf-8"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
