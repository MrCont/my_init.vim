
set relativenumber                      " Show relative line numbers
set nu                                  " Show line number
set autoindent		                    " New lines inherit the indentation of previous lines.
set expandtab 		                    " Convert tabs to spaces.
set shiftround 		                    " When shifting lines, round the indentation to the nearest multiple of hiftwidth.Î
set shiftwidth=4 	                    " When shifting, indent using four spaces.
set smarttab                            "
set tabstop=4                           "
set nocompatible                        " no Vi compatibility
set timeoutlen=500                      " Faster refresh for commands
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffersopen multiple buffers
set nowrap                              " Display long lines as just oneline
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler                               " Show the cursor position allthe time
set cursorline                          " highlight the current line
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as aword text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits willautomatically be below
set splitright                          " Vertical splits will automatically be to the right
set noerrorbells                        " no error sound notifications
set wildmenu                            " tab menu for completion
set lazyredraw                          " faster macros
set incsearch
set smartcase                           " search case sensitive only when uppercase is used
set noswapfile                          " no more swap messages
set clipboard+=unnamedplus              " paste and copy with outside
set scrolloff=10                        " start scolling when x lines ahead
set colorcolumn=80                      " color column number 80 to remind to be coincise 
set signcolumn=yes
set nohlsearch                          " after searching stu will not remain highlighted
set updatetime=50
                        
set background=dark
set termguicolors                       " proper colors enabled
set t_ut=""                             " no background erasing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Using ; insead of :
nnoremap ; :
vnoremap ; :

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" ,e to exit from any mode 
nnoremap ,e <Esc>
vnoremap ,e <Esc>gV
onoremap ,e <Esc>
inoremap ,e <Esc>`^
cnoremap ,e <C-c><Esc>
tnoremap ,e <C-/><C-n>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Better quit and save
nnoremap ,q :q<CR>
nnoremap ,s :up<CR>

" Better help and reloading vimrc
nnoremap <C-;> :source ~/.config/nvim/init.vim<CR>
nnoremap ,v :!nvim ~/.config/nvim/init.vim<CR>

" Paste yanked line
nmap ,p "0p
nmap ,P "0P

" moving lines
nnoremap \j :m+<cr>
nnoremap \k :m-2<cr>

" go to EOL and insert 
nnoremap ,ll &a

" set default deletion like backspace
nnoremap x X
nnoremap X x

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin-manager                    Vim-Plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/.config/nvim/vim-plug/plugins.vim
nnoremap \pi :PlugInstall<CR>
nnoremap \pc :PlugClean<CR>

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs),'!isdirectory(v:val.dir)'))
   \| PlugInstall --sync | source $MYVIMRC
\| endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme                       Gruvbox
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox "colorscheme choice

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" easier search                     Easymotion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ,f <leader><leader>
nmap <leader><leader>. <Plug>(easymotion-repeat)
nmap <leader><leader>f, <Plug>(easymotion-overwin-f)
nmap <leader><leader>w, <Plug>(easymotion-overwin-w)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bottom status bar                 LightLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2                    "show status bar

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" file tree                         Nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Start NERDTree when Vim starts with a directory argument.
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
     \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd'.argv()[0] | endif

 "Exit Nerdtree if the only page remaining
 autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
     \ quit | endif
