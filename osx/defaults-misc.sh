#!/bin/sh

### App Store
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

### iTunes
# defaults write com.apple.iTunes full-window -1

### QuickTime
defaults write com.apple.QuickTimePlayerX NSQuitAlwaysKeepsWindows -bool false

### Dictionary
defaults write com.apple.Dictionary ProhibitNewWindowForRequest -bool true

### Things
# defaults write com.culturedcode.things_beta QuickEntryEnabled -bool true

### Misc

# Allow insecure AFP (needed for NAS)
# http://www.alexanderwilde.com/2011/04/os-x-lion-connection-error-with-afp-and-workaround/
sudo defaults write /Library/Preferences/com.apple.AppleShareClient afp_host_prefs_version -int 1
sudo defaults write /Library/Preferences/com.apple.AppleShareClient afp_disabled_uams -array "Cleartxt Passwrd" "MS2.0" "2-Way Randnum exchange"
#sudo defaults write /Library/Preferences/com.apple.AppleShareClient afp_disabled_uams -array-add “DHCAST128″
