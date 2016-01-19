#!/usr/bin/env bash

# 
# for setting up various things automatically in OSX
#
# from: https://github.com/meinside/osx-configs.git
#
# last update: 2016.01.19
# 
# by hwj4477@gmail.com
#

REPOSITORY="git://github.com/hwj4477/osxconfigs.git"
TMP_DIR="$HOME/configs.tmp"

echo -e "\033[32mThis script will setup various things for OSX\033[0m"

# clone config files
echo -e "\033[33m>>> cloning config files...\033[0m"
rm -rf $TMP_DIR
git clone $REPOSITORY $TMP_DIR
shopt -s dotglob nullglob
mv $TMP_DIR/* $HOME/
rm -rf $TMP_DIR

# install Homebrew
echo -e "\033[33m>>> installing Homebrew...\033[0m"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install RVM and Ruby for single user
echo -e "\033[33m>>> installing RVM and Ruby...\033[0m"
curl -L https://get.rvm.io | bash -s stable --autolibs=homebrew --ruby

# re-login for loading configs
echo
echo -e "\033[31m*** logout, and login again for reloading configs ***\033[0m"!/usr/bin/env bash
