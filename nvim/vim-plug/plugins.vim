call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'tpope/vim-fugitive'
Plug 'unblevable/quick-scope'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

    "AUTOPLUGIN INSTALLATION
autocmd VimEnter * PlugInstall 
autocmd VimEnter * q
autocmd VimEnter * PlugClean
autocmd VimEnter * q
