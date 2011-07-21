" Detect Vim directory
let $VIMHOME=expand('<sfile>:p:h:h')

" Load Pathogen
if filereadable(expand("$VIMHOME/bundle/vim-pathogen/autoload/pathogen.vim"))
  source $VIMHOME/bundle/vim-pathogen/autoload/pathogen.vim
else
  redraw
  echomsg "Vim Config Error: Could not load vim-pathogen plugin. Did you run 'git submodule init' and 'git submodule update'?"
endif
