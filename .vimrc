set nocompatible              				"We want the latest Vim settings/options.

so ~/.vim/plugins.vim



syntax enable

let mapleader = ','					"The default leader is \, but a comma is much better.
set nonumber						"Let's deactivate line numbers.
set linespace=15					"line-height - Only works in graphical vim editors like Macvim.


"----------------Visuals---------------"
colorscheme PaperColor
set t_CO=256						"Use 256 colors. This is useful for Terminal Vim.
set guifont=Fira_Code					"Only works for graphical vim editors.
set background=light
set guioptions-=e					"We don't want gui tabs.

hi LineNr guibg=bg					"Only works for graphical vim editors.

"We'll fake a custom left padding for each window.
set foldcolumn=2
hi foldcolumn guibg=bg

hi vertsplit guifg=bg guibg=bg				"Get rid of ugly split borders.



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

"Turn search highlighting off.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle.
nmap <Leader>1 :NERDTreeToggle<cr>

"Search for symbols.
nmap <c-R> :CtrlPBufTag<cr>



"----------------Plugins---------------"
"\
"\ NERDTree
"\
"Let Vinegar be Vinegar and don't open NERDTree
let NERDTreeHijackNetrw = 0


"\
"\ Greplace.vim
"\
set grepprg=ag							"We want to use 'Ag' for the search.
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



"----------------Auto-Commands---------------"
"Automaically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END



" Notes and Tips
" - Press 'zz' to instantly center the line where the cursor is located.
" - Use ']' on a function call, to jump to its source (don't forget to
"   generate ctags -R beforehand)
