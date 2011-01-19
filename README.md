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
    * `<C-TAB>` and `<C-S-TAB>` to cycle through open tabs (alternatively `<C-p>` and
      `<C-n>`)
    * `<leader>q` to close the current focused tab
* File tree navigation (via NERDTree)
    * `<F6>` to toggle file tree on/off.
    * Set the file tree base directory by putting `let g:startDir = '/path/to/workspace'` 
      in a file named `homedir.vim` in your Vim directory. If you don't know where your Vim directory is, use `:echo $VIMHOME` from within Vim once you've installed this configuration. (Note: homedir.vim is .gitignored, so you don't have to worry about it messing with updates.)
* Easy shortcuts
    * `<C-a>` to select entire document
    * `<leader>w` to write current file
    * `<leader>c` and `<leader>v` to copy/paste with the system clipboard.
* Git integration (via vim-fugitive)
    * Git branch information for current file in status line
    * Ability to run Git commands within Vim. (Try `:git status`)
* Zen Coding support
    * Type `div#page>div.logo+ul#navigation>li*5>a` then hit `<C-e>` to expand to full, tabbed, HTML.
* Much, much more coming soon. I'm only like 10% done getting this set up, so
  don't think that this is it.
