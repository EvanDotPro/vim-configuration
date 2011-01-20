" Evan Coury's Vim Configuration
" http://www.evan.pro/
"
" This configuration is primarily geared towards PHP / web developers, but
" not by any means limited to such.

" This needs to come before other stuff (like set showcmd) because it affects
" various other options.
set nocompatible
" Load vim-pathogen
filetype off
call pathogen#runtime_append_all_bundles()
" TODO: Figure out how to keep plugin tags files cleanly out of Git.
"call pathogen#helptags()

if filereadable(expand("$VIMHOME/config.vim"))
  source $VIMHOME/config.vim
else
  redraw
  echomsg "Vim Config Error: Could not load config.vim. Did you copy config.dist.vim to config.vim?"
endif

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
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]\ %=%{fugitive#statusline()}

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
" Toggle the NERD Tree on an off with F6 in normal or insert mode
inoremap <F6> <ESC>:NERDTreeToggle<CR><C-w>li
map <F6> :NERDTreeToggle<CR><C-w>l:<ESC>

" Set the default directory for NERDTree
autocmd VimEnter * execute "cd" fnameescape(g:startDir)

" Enable NERDTree
if g:openTreeOnStart > 0
    autocmd VimEnter * NERDTree
endif

" Focus the editor buffer
autocmd VimEnter * wincmd p

"------------------
" CUSTOM SHORTCUTS
"------------------
" Save file shortcut
map <leader>w :w!<CR>

" Edit .vimrc shortcut.
map <leader>e :e ~/.vim/.vimrc<CR>

" Easy copy and paste
map <leader>v		"+gP
map <leader>c		"+y

" Select all text
map <C-a> ggVG

" Zen Coding expansion shortcut
let g:user_zen_expandabbr_key = '<C-e>'

inoremap <C-d> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-d> :call PhpDocSingle()<CR>
vnoremap <C-d> :call PhpDocRange()<CR>

"------------------
" MiniBufExplorer
"------------------
" make tabs show complete (no broken on two lines)
let g:miniBufExplTabWrap = 1

" If you use other explorers like TagList you can (As of 6.2.8) set it at 1:
let g:miniBufExplModSelTarget = 1

" If you would like to single click on tabs rather than double clicking on them to goto the selected buffer.
let g:miniBufExplUseSingleClick = 1

" <max lines: defualt 0> setting this to 0 will mean the window gets as big as needed to fit all your buffers.
let g:miniBufExplMaxSize = 3

" Shortcuts for switching tabs/buffers
map <C-p> :bprev<CR>
map <C-n> :bnext<CR>
let g:miniBufExplMapCTabSwitchBufs = 1

" Shortcut to close tab/buffer
map <leader>q :BW<CR>

" Shortcut to re-open last closed tab
map <leader>t :BUNDO<CR>

" Confirm when closing unsaved tab
let g:BufKillActionWhenModifiedFileToBeKilled = 'confirm'

" Allow users to cleanly override anything they want
if filereadable(expand("$VIMHOME/override.vim"))
  source $VIMHOME/override.vim
endif
