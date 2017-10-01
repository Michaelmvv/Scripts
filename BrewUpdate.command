#!/bin/bash
echo off
echo Checking for updates!
brew update -v

echo Getting Updates!
brew upgrade

echo Lets do some cleanup
brew prune
brew cleanup
brew doctor
