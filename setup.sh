#!/bin/sh
if [ ! -d ~/.config/nvim ]; then
	mkdir ~/.config/nvim
fi

cp -v init.lua ~/.config/nvim/init.lua
