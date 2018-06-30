" Submodules
source ~/.vim/tmux.vimrc

" Display options
set list
set listchars=tab:▸\ ,trail:█
set laststatus=2
set noshowmode
set noshowcmd

" gitgutter symbols
let g:gitgutter_sign_added = '·'
let g:gitgutter_sign_modified = '·'
let g:gitgutter_sign_modified_removed = '·̲'

" Number toggling
set number relativenumber
nnoremap <leader>n :set relativenumber!<enter>

" fzf shortcuts and stuff
set rtp+=/usr/local/opt/fzf
nmap ;; :Buffers<enter>
nmap ;v; :vsp<enter>:Buffers<enter>
nmap ;h; :sp<enter>:Buffers<enter>
nmap ;f :Files<enter>
nmap ;vf :vsp<enter>:Files<enter>
nmap ;hf :sp<enter>:Files<enter>

" Customize fzf colors to match your color scheme
let g:fzf_colors = {
  \ 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment']
  \ }


" lightline
let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
  \   'right': [ [ 'lineinfo' ],
  \              [ 'percent' ],
  \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
  \ },
  \ 'inactive': {
  \   'left': [ [ 'filename', 'modified' ] ],
  \   'right': [ [ 'lineinfo' ],
  \              [ 'percent' ] ]
  \ },
  \ 'tabline': {
  \   'left': [ [ 'tabs' ] ],
  \   'right': [ [ 'close' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head'
  \ },
  \ }

" Plugins
source ~/.vim/pack/go/extra/fzf.vim
packadd fzf.vim
packadd closetag.vim
packadd vim-commentary
packadd vim-fugitive
packadd lightline.vim
packadd vim-gitgutter
packadd vim-numbertoggle
packadd youcompleteme
