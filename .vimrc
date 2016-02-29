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


"----------------Mappings---------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Turn search highlighting off.
nmap <Leader><space> :nohlsearch<cr>




"----------------Auto-Commands---------------"

"Automaically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
