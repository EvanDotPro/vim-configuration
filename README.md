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
* Easy shortcuts
    * `<C-a>` to select entire document
    * `<leader>w` to write current file
    * `<leader>c` and `<leader>v` to copy/paste with the system clipboard.
* Git integration (via vim-fugitive)
    * Git branch information for current file in status line
    * Ability to run Git commands within Vim. (Try `:git status`)
* Zen Coding support
    * Type `div#page>div.logo+ul#navigation>li*5>a` then hit `<C-e>` to expand to full, tabbed, HTML.
* GitHub Gist integration
    * From any file, run `:Gist` to post to a Gist. Use `:Gist -p` for a private
      Gist.
    * Optionally have the Gist URL copied to your clipboard and/or launched in
      your browser.
    * Requires Git with `github.user` and `github.token` global configuration
      values set.
* Enhanced PHP 5.3 support
    * Improved syntax highlighting for new PHP 5.3 features such as namespaces, nowdoc, etc.
    * Recognition of new built-in classes and constants.
* Easy to configure
    * Simply copy `config.dist.vim` to `config.vim` and set the values
    * Experienced Vim users can create an `override.vim` file which will
      automatically be sourced after everything else, allowing anything to be
      overridden. This will not affect updates, as override.vim is already
      listed in the .gitignore.
