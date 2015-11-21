#!/bin/sh

defaults write com.apple.mail LeopardPreferredMailCharset "UTF-8"
defaults write com.apple.mail NSPreferredMailCharset "UTF-8"

defaults write com.apple.mail PreferPlainText -bool true
defaults write com.apple.mail SendFormat Plain

# defaults write com.apple.mail DisableInlineAttachmentViewing -bool true
