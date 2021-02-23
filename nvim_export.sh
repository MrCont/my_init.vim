#!/bin/sh
echo "exporting neovim config"
cp ~/.config/nvim nvim -r
sudo rm nvim/autoload -r
echo "neovim succesfully exported"
