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
packadd ctrlp.vim
packadd lightline.vim
packadd nerdtree
source ~/.vim/pack/go/opt/nerdtree-git-plugin/nerdtree_plugin/git_status.vim " packadd nerdtree-git-plugindidn't work
packadd vim-commentary
packadd vim-gitgutter
packadd vim-numbertoggle
packadd youcompleteme

" Number toggling
nnoremap <leader>n :set relativenumber!<enter>

" CtrlP settings
let g:ctrlp_user_command = ['.git', 'cd %s ; git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_cmd = 'CtrlPMixed'
" CtrlP splitopen
nnoremap <leader>v :vsp<enter>:CtrlPMixed<enter>
nnoremap <leader>h :sp<enter>:CtrlPMixed<enter>

" nerdtree-git-plugin settings
set shell=sh

" nerdtree single click to open
let g:NERDTreeMouseMode = 2
" nerdtree toggle shortcut
nnoremap <leader>t :NERDTreeToggle<enter>
