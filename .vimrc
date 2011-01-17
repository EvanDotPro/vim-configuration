" Evan Coury's Vim Configuration
" http://www.evan.pro/
"
" This configuration is primarily geared towards PHP / web developers, but
" not by any means limited to such.
"

"
" AESTHETICS
"
set t_Co=256
colors lucius
set guifont=Monospace\ 9

"
" CUSTOM LEADER SHORTCUTS
"
" Save file shortcut
nmap <leader>w :w!<cr>

" Edit .vimrc shortcut
map <leader>e :e! ~/.vim/.vimrc<cr>
