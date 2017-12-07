#!/bin/bash

set -e

brew update
brew tap caskroom/cask
brew cask install java
brew tap facebook/fb
brew install buck

buck project --ide xcode buddybuild_sample_app

