filetype off
"let $PYTHONPATH .= ":~/.vim/bundle/ropevim/ftplugin/python"
execute pathogen#infect()

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
map <leader>n :NERDTreeToggle<CR>
let g:pep8_map='<leader>8'
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

syntax on 
filetype on
filetype plugin indent on
set ruler
set expandtab
set shiftwidth=4
set ts=4
set sts=4
set ignorecase
set nowrap

set foldmethod=indent
set foldlevel=99

set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset
set statusline+=%{fugitive#statusline()}
set laststatus=2

map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

hi Normal ctermfg=120
hi SpellBad ctermbg=22
hi SpecialKey ctermfg=12
hi Directory ctermfg=12
hi Comment ctermfg=12

let g:pymode_options=0

" Remove trailing whitespace on save
autocmd BufWritePre *.py :%s/\s\+$//e

set nobackup
set nowritebackup

" Include ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim 
