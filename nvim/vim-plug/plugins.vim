call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'jiangmiao/auto-pairs'

    Plug 'tpope/vim-surround'
    Plug 'itchyny/lightline.vim'
    Plug 'morhetz/gruvbox'
    Plug 'davidhalter/jedi'
    Plug 'tpope/vim-fugitive'
    Plug 'mhinz/vim-startify'
    Plug 'tpope/vim-repeat'
    Plug 'preservim/nerdtree'
    Plug 'easymotion/vim-easymotion'

call plug#end()

    "AUTOPLUGIN INSTALLATION
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

autocmd VimLeavePre * PlugClean
