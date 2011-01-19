My Ultimate Vim Configuration
=============================
Version 0.0.1 Created by Evan Coury

Introduction
------------
After _finally_ being converted to Vim from Eclipse PDT, I've decided to take
some time to really polish my Vim configuration. 

Comming soon:

* TODO/Bug list
* Installation instructions

Current Features
----------------
* IDE-like tabs (via MiniBufExplorer, not Vim tabs)
    * <C-TAB> and <C-S-TAB> to cycle through open tabs (alternatively <C-p> and
      <C-n>)
    * <leader>q to close the current focused tab
* File tree navigation (via NERDTree)
    * <F6> to toggle file tree on/off.
    * Set the file tree base directory by putting `let g:startDir = '/path/to/workspace'` 
      in your Vim directory. (Tip: use `:echo $VIMHOME` to locate your Vim directory.)
* Easy shortcuts
    * <C-a> to select entire document
    * <leader>w to write current file
    * <leader>c and <leader>v to copy/paste with the system clipboard.
* Git integration (via vim-fugitive)
    * Git branch information for current file in status line
    * Ability to run Git commands within Vim. (Try `:git status`)
* Much, much more coming soon. I'm only like 10% done getting this set up, so
  don't think that this is it.
