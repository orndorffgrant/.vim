" Submodules
source ~/.vim/tmux.vimrc

" Theme
syntax enable

" Display options
set number relativenumber
set list
set listchars=tab:▸\ ,space:·,trail:█
set laststatus=2
set noshowmode
set noshowcmd

" Plugins
source ~/.vim/pack/go/extra/fzf.vim
packadd fzf.vim
packadd lightline.vim
packadd nerdtree
source ~/.vim/pack/go/opt/nerdtree-git-plugin/nerdtree_plugin/git_status.vim " packadd nerdtree-git-plugindidn't work
packadd vim-commentary
packadd vim-gitgutter
packadd vim-numbertoggle
packadd youcompleteme

" Number toggling
nnoremap <leader>n :set relativenumber!<enter>

" fzf shortcuts and stuff
set rtp+=/usr/local/opt/fzf
nmap ;; :Buffers<enter>
nmap ;f :Files<enter>

" nerdtree-git-plugin settings
set shell=sh

" nerdtree single click to open
let g:NERDTreeMouseMode = 2
" nerdtree toggle shortcut
nnoremap <leader>t :NERDTreeToggle<enter>

" highlight word occurrences on double click
nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>
