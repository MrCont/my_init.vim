call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'tpope/vim-fugitive'
Plug 'unblevable/quick-scope'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

call plug#end()

    "AUTOPLUGIN INSTALLATION
autocmd VimLeave * PlugInstall 
autocmd VimLeave * PlugClean
