" Theme
syntax enable

" Display options
set number relativenumber
set showmode
set showcmd
set list
set listchars=tab:▸\ ,space:·

" Submodules
source ~/.vim/tmux.vimrc

" Plugins
packadd nerdtree
packadd nerdtree-git-plugin
packadd typescript-vim
packadd vim-gitgutter
packadd vim-numbertoggle
packadd youcompleteme

" Number toggling
nnoremap <leader>n :set relativenumber!<enter>

" Ycm shortcuts
nnoremap <leader>fi :YcmCompleter FixIt<enter>
