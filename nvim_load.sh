#!/bin/sh

echo "Initializing..."
echo "removing if present nvim folder in ~/.config"
sudo rm -r ~/.config/nvim
echo "making ~/.config directory if not present"
mkdir ~/.config
sudo apt install neovim

echo "copying nvim config files"
cp nvim ~/.config/ -r

echo "installing requirements"

#paste plugins requirements here
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

sudo apt-get install -y nodejs
sudo apt-get install npm
sudo npm install -g neovim

echo "nvim config successfully setup" 
echo "now open neovim and run :PlugInstall to install the plugins"
