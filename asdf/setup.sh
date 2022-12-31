#!/usr/bin/env sh

echo "\n\n"
echo 'initializing setup for asdf...'
echo '__________________________________________________________________________'

echo 'installing asdf...'
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"
cd
source ~/.bashrc

echo 'copying settings file for asdf...'
ln -sf ~/.dotfiles/asdf/tool-versions ~/.tool-versions
