" Evan Coury's Vim Configuration
" http://www.evan.pro/
"
" This configuration is primarily geared towards PHP / web developers, but
" not by any means limited to such.

" Load vim-pathogen
filetype off
call pathogen#runtime_append_all_bundles()

" TODO: Figure out how to keep plugin tags files cleanly out of Git.
"call pathogen#helptags()

"------------
" AESTHETICS
"------------
" Let Vim know the terminal can handle 256 colors
set t_Co=256

" Set the color scheme
colorscheme lucius

" Set the font
set guifont=Monospace\ 9

" Make command line two lines high
set ch=2

" Set the status line the way I like it
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]\ %{fugitive#statusline()}

" Always put a status line in, even if there is only one window
set laststatus=2

" Clean up the GUI in Gvim
if has("gui_running")
  set guioptions-=T
endif

" Cool trick to show what you're replacing/changing
set cpoptions+=$

" Allow the cursor to go into 'invalid' places
set virtualedit=all

" Show line numbers
set number

" Highlight the current line
set cursorline

" This shows you what you're doing in a multi-stroke command
set showcmd

"--------------
" Coding Style
"--------------
set nocompatible
set expandtab
set textwidth=80
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
syntax on
filetype plugin on
filetype plugin indent on


"--------------
" PHP-Specific
"--------------
autocmd BufNewFile,BufRead *.phtml set ft=php

"---------------
" MISC SETTINGS
"---------------
" Turn off backup stuff
set nobackup
set nowb
set noswapfile

" Shortcut for arbitrary git commands
autocmd VimEnter * Alias git Git

" Incremental search?
set incsearch

" Case-insensitive search by default
set ignorecase
set smartcase

" Fast redraw
set ttyfast

" Allow buffers to have unsaved changes
set hidden

"--------------------------
" NERDTree Plugin Settings
"--------------------------
" Toggle the NERD Tree on an off with F6
nmap <F6> :NERDTreeToggle<CR>

" Close the NERD Tree with Shift-F6
nmap <S-F6> :NERDTreeClose<CR>

" Make NERDTree show hidden files
let NERDTreeShowHidden=1

" Set the starting directory for Vim/NERDTree
" To override this, put let g:startDir = '/path/to/dir' in $HOME/.vim/homedir.vim
if filereadable(expand("$HOME/.vim/homedir.vim"))
  source $HOME/.vim/homedir.vim
else
  let g:startDir = $HOME
endif

" Set the default directory for NERDTree
autocmd VimEnter * execute "cd" fnameescape(g:startDir)

" Enable NERDTree
autocmd VimEnter * NERDTree

" Focus the editor buffer
autocmd VimEnter * wincmd p

"------------------
" CUSTOM SHORTCUTS
"------------------
" Save file shortcut
nmap <leader>w :w!<cr>

" Edit .vimrc shortcut
map <leader>v :e ~/.vim/.vimrc<cr>

" Easy copy and paste
map <leader>p		"+gP
map <leader>y		"+y

" Select all text
nmap <C-a> ggVG
