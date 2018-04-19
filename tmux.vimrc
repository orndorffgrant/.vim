" Plugins
packadd vim-tmux-navigator
packadd vmux

" Vmux shortcuts
nnoremap <leader>r :VmuxSendPrimary bottom-left up<enter>
nnoremap <leader>c :VmuxSendPrimary bottom-left C-c<enter>
nnoremap <leader>gs :VmuxSendSecondary bottom-right git space status<enter>

