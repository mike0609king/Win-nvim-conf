"General configurations
if has("syntax")
  syntax on
endif

set nocompatible
filetype plugin on
filetype plugin indent on
syntax enable
syntax on
set autoindent
set belloff=all
set showcmd				" Show (partial) command in status line.
set showmatch				" Show matching brackets.
set ignorecase				" Do case insensitive matching
" set smartcase				" Do smart case matching
set incsearch				" Incremental search -> while searching you get the results
set autowrite				" Automatically save before commands like :next and :make
set mouse=a				" Enable mouse usage (all modes)
set path+=** 				" searches in the folders if I use :find
set wildmenu 				" uses a menu so that I can select the file if I use <tab> for completion in
					" :find and more than one file has been found
set guifont=Consolas:h15		" changes the guifont
set relativenumber			" sets relative numbers
set number				" sets number at the current line
set clipboard=unnamedplus		" activates clipboard ?
set autoread				" ? 
"set wrap linebreak
"set shortmess+=c			" the autocomplete messages won't show below (completion Plugin)
set hidden
set nowrap 				" code can go down go out of screen
let mapleader=" "
set encoding=utf-8
set backspace=indent,eol,start 		" removing the restriction of the backspace so that it it is possible to delete previously entered code
set noswapfile " no swap file is going to get created

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=4
set softtabstop=4
" when indenting with '>', use 2 spaces width
set shiftwidth=4

" my universal mapping
nnoremap ,unfold :set foldlevel=100<cr>	
nnoremap ,all ggvg
nnoremap ,clear ggVGx
nnoremap ,ecmd :!cls<cr>
nnoremap ,copy ggVGy
nnoremap <leader>h :wincmd h<cr> 		" switch windows 
nnoremap <leader>j :wincmd j<cr> 		" switch windows
nnoremap <leader>k :wincmd k<cr> 		" switch windows
nnoremap <leader>l :wincmd l<cr> 		" switch windows 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Fix of cursor in vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"     Windows Copy
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" copy (write) highlighted text to .vimbuffer
" vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
" map <C-v> :r ~/.vimbuffer<CR>
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"     Linux Copy
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <C-v> <ESC>"+pa
vmap <C-c> "+y

nnoremap <silent><leader>= :vertical resize +5<cr> 	" resize the vertical window (+)
nnoremap <silent><leader>- :vertical resize -5<cr> 	" resize the vertical window (-)
" spelling mappings
nnoremap ,setd :set spell spelllang=en_us,de<cr>
nnoremap ,seteng :set spell spelllang=en_us<cr>
nnoremap ,setger :set spell spelllang=de<cr>
nnoremap ,setnosp :set nospell<cr>

" mapping special characters for note
inoremap \"o ??
inoremap \"u ??
inoremap \"a ??
inoremap \ss ??
inoremap \"O ??
inoremap \"U ??
inoremap \"A ??

let $configPath='C:\Users\mike-\AppData\Local\nvim'
let $modulePath='$configPath\myModules'
let $pluginsPath='$modulePath/Plugins'

source $modulePath/buffersAndTabs.vim

source $modulePath/python.vim
source $modulePath/cpp.vim
source $modulePath/c.vim
source $modulePath/java.vim
source $modulePath/tex.vim
source $modulePath/sh.vim
source $modulePath/note.vim
source $modulePath/calcurse.vim
source $modulePath/markdown.vim
source $modulePath/json.vim

source $pluginsPath/plugins.vim


" transparency
hi Normal guibg=NONE ctermbg=NONE
