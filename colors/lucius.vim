if filereadable(expand("$VIMHOME/submodules/Lucius/colors/lucius.vim"))
  source $VIMHOME/submodules/Lucius/colors/lucius.vim
else
  redraw
  echomsg "Vim Config Error: Could not load Lucius color scheme. Did you run 'git submodule init' and 'git submodule update'?"
endif
" Evan's overrides
hi Comment          guifg=#5D8D8F           ctermfg=66              gui=none
hi CursorLine       gui=NONE                guibg=#202438           gui=none
hi CursorLine       cterm=NONE              ctermbg=236             cterm=none
