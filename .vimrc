set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"add nerdtree
Plugin 'scrooloose/nerdtree'
"add supertab
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'preservim/nerdcommenter'
"Plugin 'python-mode/python-mode'
Plugin 'mhartington/oceanic-next'
Plugin 'yggdroot/indentline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tmhedberg/SimpylFold'
Plugin 'ryanoasis/vim-devicons'
Plugin 'wincent/command-t'
Plugin 'mhinz/vim-startify'
"Plugin 'terryma/vim-smooth-scroll'
Plugin 'mattesgroeger/vim-bookmarks'
Plugin 'gelguy/cmd2.vim'
Plugin 'dreadnaut/vim-bargreybars'
"Plugin 'valloric/youcompleteme'
Plugin 'luochen1990/rainbow'
Plugin 'mechatroner/rainbow_csv'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

let g:rainbow_active = 1

let g:rainbow_active = 1

let g:jedi#popup_on_dot=1
let g:jedi#popup_select_first =1


" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set nu
syntax on
colorscheme OceanicNext

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> 

map <C-x> :NERDTreeToggle<CR>
let mapleader = "~"
"nmap ,p :w<CR>:!python3 %<CR>

"vim clipboard
set clipboard=unnamed

"Turn on backup option
set backup
"Where to store backups
set backupdir=~/storage/shared/VIM_bak//
"Make backup before overwriting the current buffer
set writebackup
"Overwrite the original backup file
set backupcopy=yes
"Meaningful backup name, ex: filename@2015-04-05.14:59
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")
