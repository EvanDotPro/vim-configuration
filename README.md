# My Ultimate Vim Configuration

Version 1.0.0 Created by Evan Coury

```
  _    _                 _     _   __          __  _     _____             _     
 | |  | |               | |   | |  \ \        / / | |   |  __ \           ( )    
 | |__| |_   _ _ __ ___ | |__ | | __\ \  /\  / /__| |__ | |  | | _____   _|/ ___ 
 |  __  | | | | '_ ` _ \| '_ \| |/ _ \ \/  \/ / _ \ '_ \| |  | |/ _ \ \ / / / __|
 | |  | | |_| | | | | | | |_) | |  __/\  /\  /  __/ |_) | |__| |  __/\ V /  \__ \
 |_|  |_|\__,_|_| |_| |_|_.__/|_|\___| \/  \/ \___|_.__/|_____/ \___| \_/   |___/
            _                              __ _
           (_)                            / _(_)
     __   ___ _ __ ___     ___ ___  _ __ | |_ _  __ _
     \ \ / / | '_ ` _ \   / __/ _ \| '_ \|  _| |/ _` |
      \ V /| | | | | | | | (_| (_) | | | | | | | (_| |
       \_/ |_|_| |_| |_|  \___\___/|_| |_|_| |_|\__, |
                                                 __/ |
                                                |___/
```

## Introduction

This is the personal vim config of Thomas Veilleux (aka HumbleWebDev).

Author: Evan Coury, http://blog.evan.pro/
URL: https://github.com/EvanDotPro/vim-configuration

Special thanks to:

- Steve Francia for [spf13-vim](https://github.com/spf13/spf13-vim)
- Marc Weber for [Vundle](https://github.com/gmarik/vundle)
- [Aleksey Khudyakov](https://github.com/Xerkus) (aka Xerkus) for adding git-treeish support to Vundle
- All of the authors of the other amazing Vim plugins I use every day.

## Installation (Linux & Mac)

- If you have an existing vim configuration, back it up:
    - ``for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc; do [ -e $i ] && mv $i $i.`date +%Y%m%d`; done``
- `git clone --recursive https://github.com/HumbleWebDev/vim-configuration.git $HOME/hwd-vim`
- `ln -s $HOME/hwd-vim $HOME/.vim`
- `ln -s $HOME/hwd-vim/.vimrc $HOME/.vimrc`
- `vim +BundleInstall! +BundleClean +q` (You may see some errors about colorscheme or other things, just hit enter and ignore them.)
- Copy `config.local.vim.dist` to `config.local.vim` and set your base workspace directory.
- Create an `override.local.vim` to override settings such as fonts and stuff.

```vim
" Example override.local.vim
let g:Powerline_symbols = 'fancy'
set guifont=Inconsolata\ for\ Powerline\ 11
```

## Features

### Base Customizations

This config ships with the following basic customizations for vim:

* `:w!!` invokes a write with sudo.
* Trailing whitespace is highlighted in red.
* Trailing whitespace is automatically removed when saving c, cpp, java, php, javascript, python, twig, xml, yml, phtml, or vimrc files.
* Tab characters displayed as ▸
* Make searching highlighted, incremental, and case insensitive unless a capital letter is used.
* Gvim gui cleaned up (removes menu bars and buttons).
* `F1` is mapped to <Esc> to prevent accidental opening of help.
* `;` is remapped to `:` for easier transition into command mode.
* The Vim backup, swap, and view files are consolidated in one place so they do not interfere with your workspace.

### Fully Customizable

This configuration is fully customizable
If you want to customize the config, you should not need to fork and/or make changes directly to the `.vimrc`. Instead, you can simply create an `override.local.vim` file in your vim directory and override any settings there.

### Easy Shortcuts

* `<C-a>` - Select all
* `<leader>w` - Write current file
* `<leader>c` and `<leader>v` - Copy and paste with the system clipboard

### PHP Auto-completion

Using a [patched version of ctags](https://github.com/shawncplus/phpcomplete.vim/wiki/Patched-ctags), you
can now enjoy smart, namespace, trait, and context-aware auto-completion for
PHP in vim. The [phpcomplete.vim]() included in my config already has support
for the more intelligent tag files.

## Plugins

* **General**
    - [NERDTree](https://github.com/scrooloose/nerdtree)
    - [NERDTree-symlink](EvanDotPro/nerdtree-symlink) (small plugin by me to allow easily creating symlinks from NERDTree)
    - [ctrlp.vim](https://github.com/kien/ctrlp.vim)
    - [Powerline](https://github.com/Lokaltog/vim-powerline)
    - [numbers.vim](http://myusuf3.github.com/numbers.vim/)
    - [FuzzyFinder](https://github.com/vim-scripts/FuzzyFinder) (and dependency [L9](https://github.com/vim-scripts/L9))
* **Themes**
    - [Lucius](https://github.com/vim-scripts/Lucius) (default)
    - [Solarized](https://github.com/altercation/vim-colors-solarized)
    - [vim-colors](https://github.com/spf13/vim-colors) (contains a ton of additional themes)
* **General Programming**
    - [fugitive](https://github.com/tpope/vim-fugitive)
    - [tabular](https://github.com/godlygeek/tabular)
    - [syntastic](https://github.com/scrooloose/syntastic)
    - [gist-vim](https://github.com/mattn/gist-vim) (and dependency [webapi-vim](https://github.com/mattn/webapi-vim))

(TODO: There's more -- I need to finish this list)

## Screenshots / Tour

[vim-zoom](https://github.com/EvanDotPro/vim-zoom) allows you to zoom in and out (adjusts font size) by simply holding control and using your scroll wheel:

![](http://evan.pro/caps/ffd72d.png)

[Powerline](https://github.com/Lokaltog/powerline) provides a sexy looking status bar:

![](http://evan.pro/caps/9421e0.png)

Git diff info (+/-/~) in the gutter area [vim-gitgutter](https://github.com/airblade/vim-gitgutter) (port of the Sublime 2 [Git Gutter](https://github.com/jisaacks/GitGutter) plugin).

![](http://evan.pro/caps/6317ff.png)

[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) provides multiple cursor support just like Sublime:

![](https://github.com/terryma/vim-multiple-cursors/raw/master/assets/example2.gif?raw=true)

Inline syntax checking provided by [Syntastic](https://github.com/scrooloose/syntastic):

![](http://evan.pro/caps/2f3685.png)

[NERDTree](https://github.com/scrooloose/nerdtree) provides a powerful IDE-like tree explorer:

![](http://evan.pro/caps/847071.png)

Quickly and easily post code to Gists thanks to [gist-vim](https://github.com/mattn/gist-vim):

![](http://evan.pro/caps/62e199.png)

_Awesome_ Git/Github integration courtesy of [fugitive](https://github.com/tpope/vim-fugitive):

![](http://evan.pro/caps/fab212.png)

Tabbing made easy with [Tabular](https://github.com/godlygeek/tabular):

![](http://evan.pro/caps/33c34c.png)

Quick PHP getter/setter generation with [php\_getset.vim](https://github.com/EvanDotPro/php_getset.vim)

![](http://evan.pro/caps/9949fb.png)

Write HTML insanely fast using [Emmet-vim](https://github.com/mattn/emmet-vim):

![](http://evan.pro/caps/8c9660.png)

## Misc Tips

#### Make the GTK background for GVIM match Vim background color
In `~/.gtkrc-2.0` put the following:
```
style "vimfix" {
  bg[NORMAL] = "#303030" # this matches my gVim theme 'Normal' bg color.
}
widget "vim-main-window.*GtkForm" style "vimfix"
```
(This still works with Gnome-shell and GTK3, because GVIM is using GTK2 still.
