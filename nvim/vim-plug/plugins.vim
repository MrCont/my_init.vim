call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'unblevable/quick-scope'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'
Plug 'gruvbox-community/gruvbox'

call plug#end()

    "AUTOPLUGIN INSTALLATION
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

autocmd VimLeavePre * PlugClean
