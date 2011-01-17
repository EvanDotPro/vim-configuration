if filereadable(expand("~/.vim/submodules/Lucius/colors/lucius.vim"))
  source ~/.vim/submodules/Lucius/colors/lucius.vim
else
  redraw
  echomsg "Vim Config Error: Could not load Lucius color scheme. Did you run 'git submodule init' and 'git submodule update'?"
endif
