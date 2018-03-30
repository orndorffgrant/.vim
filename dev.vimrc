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
packadd ctrlp.vim
packadd lightline.vim
packadd nerdtree
source ~/.vim/pack/go/opt/nerdtree-git-plugin/nerdtree_plugin/git_status.vim " packadd nerdtree-git-plugindidn't work
packadd vim-commentary
packadd vim-gitgutter
packadd vim-numbertoggle
packadd youcompleteme

" Wierd file type extensions
augroup filetypedetect
  au BufRead,BufNewFile *.vue set filetype=html
augroup END

" Number toggling
nnoremap <leader>n :set relativenumber!<enter>
" CtrlP settings
let g:ctrlp_user_command = ['.git', 'cd %s ; git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_cmd = 'CtrlPMixed'

" nerdtree-git-plugin settings
set shell=sh
