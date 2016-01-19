#!/usr/bin/env bash

#
# Build Atomfile(atom package list)
#
# last update: 2016.01.19
#
# by hwj4477@gmail.com
#


echo 'build Atomfile to home'

apm list --installed --bare > ~/Atomfile


