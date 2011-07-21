if filereadable(expand("$VIMHOME/bundle/Lucius/colors/lucius.vim"))
  source $VIMHOME/bundle/Lucius/colors/lucius.vim
else
  redraw
  echomsg "Vim Config Error: Could not load Lucius color scheme. Did you run 'git submodule init' and 'git submodule update'?"
endif
" Evan's overrides
hi Comment          guifg=#5D8D8F           ctermfg=66              gui=none
hi CursorLine       gui=NONE                guibg=#202438           gui=none
hi CursorLine       cterm=NONE              ctermbg=236             cterm=none

hi ColorColumn       gui=NONE                guibg=#202438           gui=none
hi ColorColumn       cterm=NONE              ctermbg=236             cterm=none

hi Special          guifg=#d0a0f0                                   gui=none
hi Special          ctermfg=182                                     cterm=none
hi SpecialBold      guifg=#d0a0f0                                   gui=bold
hi SpecialBold      ctermfg=182                                     cterm=bold
