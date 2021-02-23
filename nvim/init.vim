source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/coc.vim
    "AUTOPLUGIN INSTALLATION
"autocmd VimEnter * PlugInstall 

    "AUTOSTART NERDTree
autocmd VimEnter * NERDTree

    "VIM RAINBOW CONFIG
let g:rainbow_active = 1

