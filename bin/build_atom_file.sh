#!/bin/zsh

#
# Build Atomfile(atom package list)
#
# last update: 2020.02.19
#
# by hwj4477@gmail.com
#


echo 'build Atomfile to home'

apm list --installed --bare > ~/Atomfile


