" Theme
syntax enable

" Display options
set number relativenumber
set list
set listchars=tab:▸\ ,space:·
set laststatus=2
set noshowmode
set noshowcmd

" Submodules
source ~/.vim/tmux.vimrc

" Plugins
packadd lightline.vim
packadd nerdtree
packadd nerdtree-git-plugin
packadd typescript-vim
packadd vim-commentary
packadd vim-gitgutter
packadd vim-numbertoggle
packadd youcompleteme

" Number toggling
nnoremap <leader>n :set relativenumber!<enter>

" Ycm shortcuts
nnoremap <leader>fi :YcmCompleter FixIt<enter>
