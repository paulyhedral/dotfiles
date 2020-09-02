#!/bin/bash

# AirDrop
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true
# debug menu in AppStore
defaults write com.apple.appstore ShowDebugMenu -bool true
# Safari Develop menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true && \
defaults write com.apple.Safari IncludeDevelopMenu -bool true && \
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true && \
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true && \
defaults write -g WebKitDeveloperExtras -bool true
# stop asking for backup disks with Time Machine
sudo defaults write /Library/Preferences/com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
# lock the Dock size
defaults write com.apple.Dock size-immutable -bool yes && \
killall Dock
# show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles true
# unhide Library folder
chflags nohidden ~/Library
# show path bar
defaults write com.apple.finder ShowPathbar -bool true
# show status bar
defaults write com.apple.finder ShowStatusBar -bool true
# disable auto-carrot
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
# enable tab
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
# enable startup chime
sudo nvram StartupMute=%00
