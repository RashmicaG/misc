"pathogen
execute pathogen#infect()
call pathogen#helptags()

"other things
syntax on
set number
let $BASH_ENV = "~/.bash_aliases"
set background=dark
colorscheme jellybeans
"colorscheme php
"let g:jellybeans_use_lowcolor_black = 0
set showcmd
set wildmenu

"search things
set incsearch
set ignorecase
set nohlsearch

"read files that have changed outside of vim
set autoread

"tabs and indenting
filetype plugin indent on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set smarttab

"turn on autocompletion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"highlight the current line
set cursorline

"end lines unix style
set fileformat=unix
au BufNewFile * set fileformat=unix

"visually wrap long lines
set textwidth=0
set wrap

"keep current line in the middle of the screen
set scrolloff=999

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

"airline
set laststatus=2

" start NERDtree automatically
"autocmd vimenter * NERDTree


"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_c_check_header = 1
let g:syntastic_c_auto_refresh_includes = 1
let g:syntastic_c_include_dirs = [ 'common', 'common/libs/libqlutil/src', 'common/libs/libqlapp', 'common/libs/libqlapp/include', 'common/libs/libqlapp/src', 'common/libs/libqlssl/src', 'common/libs/libqldbparse/src', 'common/libs/libqltree/src', 'common/libs/libqlasn1/src', 'common/libs/libqlerrortrace/src', 'common/libs/libqlloader/src', 'common/libs/libqlsocket/src', 'common/libs/libqlcunit/src', 'common/libs/libqldbconfig/src', 'common/libs/libqltimer/src', 'common/libs/libqlutil/src', 'common/libs/libqlpassword/src', 'common/libs/libqlapp/src', 'common/libs/libqlapp/example-src', 'common/libs/libqlproxy/src', 'common/libs/libqllog/src', 'common/libs/libqlplatformini/src', 'common/libs/libqlcrypto/src', 'common/libs/libqldb/src', 'common/libs/libqlthread/src', 'common/libs/libqlcap/src']

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
