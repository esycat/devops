#!/bin/sh

# Region and Language
defaults write -g AppleLocale -string "en_AU"
defaults write -g AppleLanguages -array "en" "ru"

# Metric measurement units
defaults write -g AppleMetricUnits -bool true
defaults write -g AppleMeasurementUnits -string "Centimeters"

# Set First day of week to Monday
defaults write -g AppleFirstWeekday -dict gregorian 2

# Set Time fromat to 24-Hour Time
defaults write -g AppleICUForce24HourTime -bool true

# Enable spring-loading and set delay
defaults write -g com.apple.springing.enabled -bool true
defaults write -g com.apple.springing.delay -float 0.1

defaults write -g AppleMiniaturizeOnDoubleClick -bool false
