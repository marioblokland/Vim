set nocompatible                                        "We want the latest Vim settings/options.

so ~/.vim/plugins.vim

syntax enable

let mapleader = ','                                     "The default leader is \, but a comma is much better.
set nonumber                                            "Let's deactivate line numbers.
set linespace=15                                        "line-height - Only works in graphical vim editors like Macvim.


"----------------Visuals---------------"
colorscheme gruvbox
set t_CO=256                                            "Use 256 colors. This is useful for Terminal Vim.
set background=dark
set guifont=Fira\ Mono:h11                              "Only works for graphical vim editors.
set guioptions-=e                                       "We don't want gui tabs.
set guioptions-=m
set guioptions-=T
set guioptions-=r

hi LineNr guibg=bg                                      "Only works for graphical vim editors.

"We'll fake a custom left padding for each window.
set foldcolumn=2

"For GUI Vim
hi foldcolumn guibg=bg
"For terminal Vim
hi foldcolumn ctermbg=bg

hi vertsplit guifg=bg guibg=bg                           "Get rid of ugly split borders.
hi vertsplit ctermfg=bg ctermbg=bg                           

"Show a visual line under the cursor's current line.
set cursorline




"----------------Search---------------"
"Highlight search.
set hlsearch

"Highlight search already while typing.
set incsearch



"----------------Split Management---------------"
"Split new window below the current one
set splitbelow

"Split new window on the right side of the current one
set splitright

"Make switching windows easier
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>



"----------------Mappings---------------"
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>

"Turn search highlighting off.
nmap <Leader><space> :nohlsearch<cr>

nmap <Leader>1 :NERDTreeToggle<cr>

"Search for symbols.
nmap <c-R> :CtrlPBufTag<cr>

"Find symbols (methods, functions etc.)
nmap <Leader>f :tag<space>

"Show marks
nmap <Leader>m :marks<cr>


"----------------Languages---------------"
"\
"\ Python
"\
"Enable all Python syntax highlighting features
let python_highlight_all = 1



"----------------Spacing---------------"
"Set tabs to have 4 spaces.
set tabstop=4

"Autoindent when movng to the next line while writing code.
set autoindent

"Expand tabs to have 4 spaces
set expandtab

"When using >> or << commands, shift lines by 4 spaces.
set shiftwidth=4



"----------------Plugins---------------"
"\
"\ NERDTree
"\
"Let Vinegar be Vinegar and don't open NERDTree
let NERDTreeHijackNetrw = 0


"\
"\ Greplace.vim
"\
set grepprg=ag                                            "We want to use 'Ag' for the search.
let g:grep_cmd_opts = '--line-numbers --noheading'


"\
"\ Syntastic
"\
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"\
"\ UltiSnips
"\
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"\
"\ Airline
"\
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#themes#hybrid#palette = {}
set laststatus=2



"----------------Auto-Commands---------------"
"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END



" Notes and Tips
" - Press 'zz' to instantly center the line where the cursor is located.
" - Use ']' on a function call, to jump to its source (don't forget to
"   generate ctags -R beforehand)
"
"
