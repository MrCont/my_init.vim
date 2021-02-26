#!/bin/sh
echo "deleting if present current nvim folder in repo"
sudo rm -r nvim
echo "exporting neovim config"

cp ~/.config/nvim nvim -r
sudo rm -r nvim/autoload
echo "neovim succesfully exported"
