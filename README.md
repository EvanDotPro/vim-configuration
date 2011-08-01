My Ultimate Vim Configuration
=============================
Version 0.0.1 Created by Evan Coury

Introduction
------------
This is my awesome Vim config.

Installation Notes
------------------
* `sudo yum install msimonson-anonymouspro-fonts xclip`
* Copy config.dist.vim to config.vim and change the values to suit your needs.
* If you're unhappy with any of my settings that aren't in config.vim, you can
  create an override.vim and put your settings in there. This file is
  .gitignored so you will still be able to pull updates cleanly and not risk
  merge conflicts.
* To update, run `git pull && git submodule update && git submodule init`. If
  you get any errors, check config.dist.vim for changes.

Comming soon:

* TODO/Bug list
* Installation instructions

Current Features
----------------
* Beautiful
    * Two great themes: lucius and solarized
* IDE-like tabs (via MiniBufExplorer, not Vim tabs)
    * `<C-TAB>` and `<C-S-TAB>` to cycle through open tabs. 
    * `<leader>q` to close the current focused tab.
    * `<leader>t` to re-open the last closed tab.
* File tree navigation (via NERDTree)
    * `<F6>` to toggle file tree on/off.
* Easy shortcuts
    * `<C-a>` to select entire document.
    * `<leader>w` to write current file.
    * `<leader>c` and `<leader>v` to copy/paste with the system clipboard.
* Git integration (via fugitive.vim and extradite.vim)
    * Git branch information for current file in status line.
    * Ability to run Git commands within Vim. (Try `:git status`)
    * Per-file Git history by running `:Extradite!` (Hit `q` to close)
* Zen Coding support
    * Type `div#page>div.logo+ul#navigation>li*5>a` then hit `<C-z>` to expand to full, tabbed, HTML.
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
    * Quickly generate PHP doc blocks with `<C-d>` in normal, insert, or select
      mode. In select mode, it will comment all uncommented elements in the
      selected area.
    * Automatic PHP 5 getter and setter generation for model classes: with the properties selected or
      cursor on the line of the property, use `<leader>g` for getters, `<leader>s` for setters, and
      `<leader>b` for both.
    * Automatic PHP syntax checking when opening/saving PHP files. Syntax error
      details displayed, error line underlined in red curly 'undercurl' format
      and cursor moved to error upon save.
* Easy to configure
    * Simply copy `config.dist.vim` to `config.vim` and set the values.
    * Experienced Vim users can create an `override.vim` file which will
      automatically be sourced after everything else, allowing anything to be
      overridden. This will not affect updates, as override.vim is already
      listed in the .gitignore.
