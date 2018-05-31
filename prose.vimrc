" Submodules
source ~/.vim/tmux.vimrc

" Create spl file
if filereadable($HOME . '/.vim/spell/en.utf-8.add.spl') == 0
  silent mkspell! ~/.vim/spell/en.utf-8.add
endif

" Theme
set spelllang=en_us
set spell
syntax enable

" Display options
set number
set showmode
set showcmd

" Plugins
packadd nerdtree
packadd closetag.vim

" Bindings
nnoremap j gj
nnoremap k gk
nnoremap <leader>fi 1z=

