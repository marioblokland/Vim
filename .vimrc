set nocompatible              				"We want the latest Vim settings/options.

so ~/.vim/plugins.vim



syntax enable

let mapleader = ','					"The default leader is \, but a comma is much better.
set number						"Let's activate line numbers.
set linespace=15					"line-height - Only works in graphical vim editors like Macvim.


"----------------Visuals---------------"
colorscheme PaperColor
set t_CO=256						"Use 256 colors. This is useful for Terminal Vim.
set guifont=Fira_Code					"Only works for graphical vim editors.
set background=light



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



"----------------Auto-Commands---------------"
"Automaically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
