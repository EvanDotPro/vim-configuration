if filereadable(expand("$VIMHOME/bundle/phpcomplete.vim/phpcomplete.vim"))
  source $VIMHOME/bundle/phpcomplete.vim/phpcomplete.vim
else
  redraw
  echomsg "Vim Config Error: Could not load phpcomplete.vim plugin. Did you run 'git submodule init' and 'git submodule update'?"
endif

