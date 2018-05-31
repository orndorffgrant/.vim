" Don't care about vi
set nocompatible
" Don't want anything I didn't write to be run
set modelines=0

" Theme
set background=dark
colorscheme Tomorrow-Night
syntax enable

" Indentation
filetype plugin indent on
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab

" Search options
set ignorecase
set smartcase

" Interaction options
au FocusLost * :wa
set mouse=a
set ttymouse=xterm2 " pane resizing with mouse inside tmux
" noremap <ScrollWheelUp> 2<C-Y>
" noremap <ScrollWheelDown> 2<C-E>
set backspace=indent,eol,start " More 'normal' backspace
set splitbelow
set splitright

" Gvim display options
set guioptions-=T  " remove toolbar
set guioptions-=r  " remove right-hand scroll bar
set guioptions-=L  " remove left-hand scroll bar

" Put all files generated by vim in ~/.vim/ dir
if isdirectory($HOME . '/.vim/backup') == 0
 :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir=~/.vim/backup/
set backup

if isdirectory($HOME . '/.vim/swap') == 0
 :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=~/.vim/swap//

set viminfo+=n~/.vim/viminfo

set undofile
if isdirectory($HOME . '/.vim/undo') == 0
 :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
endif
set undodir=~/.vim/undo//

" Commands to load more complicated profiles
command! Tmux source ~/.vim/tmux.vimrc

command! Prose source ~/.vim/prose.vimrc

command! Dev source ~/.vim/dev.vimrc
command! Vue source ~/.vim/vue.vimrc
command! React source ~/.vim/react.vimrc
command! Golang source ~/.vim/go.vimrc

