#!/bin/zsh

# 
# for setting up various things automatically in macOS
#
# last update: 2020.2.19
# 
# by woojeong.hong@navercorp.com
#

REPOSITORY="https://oss.navercorp.com/woojeong-hong/macOS-configs.git"
TMP_DIR="$HOME/configs.tmp"

echo -e "\033[32mThis script will setup various things for macOS\033[0m"

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

# install oh my zsh
echo -e "\033[33m>>> installing oh my zsh...\033[0m"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# re-login for loading configs
echo
echo -e "\033[31m*** logout, and login again for reloading configs ***\033[0m"!/usr/bin/env bash
