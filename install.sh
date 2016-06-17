#!/bin/sh

# You may want to setup your computer using Thoughtbot's laptop
# https://github.com/thoughtbot/laptop
#
# curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac | sh
echo "Installing homefiles"
gem install homesick
homesick clone git://github.com/pitchinvasion/home-files.git
cd home-files
git submodule init
git submodule update
homesick symlink home-files
homesick rc home-files

echo "Running local install scripts"
sh $HOME/.laptop.local

echo "Done!"
