filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'othree/yajs.vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'flazz/vim-colorschemes'
Plugin 'Shougo/unite.vim'
Plugin 'mattn/emmet-vim'
Plugin 'kien/rainbow_parentheses.vim'

" Auto completion
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'

" Python
"Plugin 'hdima/python-syntax'
Plugin 'klen/python-mode'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'davidhalter/jedi-vim'

" PHP
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'StanAngeloff/php.vim'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
