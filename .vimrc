" Modeline and Notes {
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
"
"  _____                ______      _  ______          _
" |  ___|               |  _  \    | | | ___ \        ( )
" | |____   ____ _ _ __ | | | |___ | |_| |_/ / __ ___ |/ ___
" |  __\ \ / / _` | '_ \| | | / _ \| __|  __/ '__/ _ \  / __|
" | |___\ V / (_| | | | | |/ / (_) | |_| |  | | | (_) | \__ \
" \____/ \_/ \__,_|_| |_|___/ \___/ \__\_|  |_|  \___/  |___/
"            _                              __ _
"           (_)                            / _(_)
"     __   ___ _ __ ___     ___ ___  _ __ | |_ _  __ _
"     \ \ / / | '_ ` _ \   / __/ _ \| '_ \|  _| |/ _` |
"      \ V /| | | | | | | | (_| (_) | | | | | | | (_| |
"       \_/ |_|_| |_| |_|  \___\___/|_| |_|_| |_|\__, |
"                                                 __/ |
"                                                |___/
"
"   This is the personal vim config of Evan Coury (aka EvanDotPro).
"
"   Author: Evan Coury, http://blog.evan.pro/
"      URL: https://github.com/EvanDotPro/vim-configuration
"
"   Special thanks to:
"
"    - Steve Francia for spf13-vim (https://github.com/spf13/spf13-vim)
"    - Marc Weber for Vundle(https://github.com/gmarik/vundle)
"    - Aleksey Khudyakov (aka Xerkus) for adding git-treeish support to Vundle
"    - All of the authors of the other amazing Vim plugins I use every day.
"
" }

" Environment {
    " Basics {
        set nocompatible                   " Use ViMproved, don't emulate old vi
        let $VIMHOME = split(&rtp, ',')[0] " Find the Vim path
    " }

    " Vundle {
        filetype off " Turned back on after loading bundles 
        set rtp+=$VIMHOME/bundle/vundle
        call vundle#rc()
        Bundle 'EvanDotPro/vundle', 'feature/refactor-git-treeish-support', {'local': 1}
    " }

    " Local Configuration {
        if filereadable(expand("$VIMHOME/config.local.vim"))
            source $VIMHOME/config.local.vim
        endif
    " }
" }

" Bundles {
"

    " You can define just the groups you need in your config.local.vim
    if !exists('g:bundle_groups')
        let g:bundle_groups=['general', 'themes', 'programming', 'php']
    endif


    if !exists('g:override_bundles')

        " General
            if count(g:bundle_groups, 'general')
                Bundle 'scrooloose/nerdtree', '4.2.0'
                Bundle 'kien/ctrlp.vim'
                Bundle 'Lokaltog/vim-powerline', 'develop'
                Bundle 'fholgado/minibufexpl.vim', '6.4.4'
            endif

        " Themes
            if count(g:bundle_groups, 'themes')
                Bundle 'Lucius', '7.1.1'
                Bundle 'altercation/vim-colors-solarized'
                Bundle 'spf13/vim-colors'
            endif

        " General Programming
            if count(g:bundle_groups, 'programming')
                Bundle 'tpope/vim-fugitive'
                Bundle 'godlygeek/tabular'
                Bundle 'mattn/webapi-vim'
                Bundle 'mattn/gist-vim'
                Bundle 'tpope/vim-markdown'
            endif

        " PHP
            if count(g:bundle_groups, 'php')
                Bundle 'spf13/PIV'
            endif

    endif


" }

" General {

    filetype plugin indent on " Automatically detect file types.
    syntax on                 " syntax highlighting
    set mouse=a               " automatically enable mouse usage
    set virtualedit=onemore   " allow for cursor beyond last character
    set history=1000          " Store a ton of history (default is 20)
    set hidden                " allow buffer switching without saving
    scriptencoding utf-8
    set encoding=utf-8
    autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
    autocmd VimEnter * execute "cd" fnameescape(g:startDir)

" }

" Vim UI {

    set shortmess+=I                       " Disable splash text
    set t_Co=256                           " Fix colors in the terminal
    color lucius                           " Vim colorscheme
    let g:Powerline_colorscheme = 'lucius' " Powerline colorscheme
    set laststatus=2                       " Always show status bar
    set mousemodel=popup                   " Enable context menu

    " Clean up the GUI in Gvim
    if has("gui_running")
        set guioptions-=T
        set guioptions-=m
        set guioptions+=LlRrb " bug?
        set guioptions-=LlRrb
        set guioptions+=r
    endif

    set backspace=indent,eol,start " backspace for dummies
    set linespace=0                " No extra spaces between rows
    set number                     " Line numbers on
    set cpoptions+=$               " Cool trick to show what you're replacing
    set showmatch                  " show matching brackets/parenthesis
    set showcmd                    " show multi-key commands as you type
    set incsearch                  " find as you type search
    set hlsearch                   " highlight search terms
    set winminheight=0             " windows can be 0 line high
    set ignorecase                 " case insensitive search
    set smartcase                  " case sensitive when uc present
    set wildmenu                   " show list instead of just completing
    set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.
    set scrolljump=5               " lines to scroll when cursor leaves screen
    set scrolloff=3                " minimum lines to keep above and below cursor
    set foldenable                 " auto fold code
    set list                       " Use the listchars settings
    set listchars=tab:▸\           " Highlight problematic whitespace

" }

" Formatting {   

    "set nowrap        " wrap long lines
    set autoindent    " indent at the same level of the previous line
    set shiftwidth=4  " use indents of 4 spaces
    set expandtab     " tabs are spaces, not tabs
    set tabstop=4     " an indentation every four columns
    set softtabstop=4 " let backspace delete indent
    " Remove trailing whitespaces and ^M chars
    autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml,phtml,vimrc autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
" }

" Key (re)Mappings {

    "The default leader is '\', but many people prefer ','
    let mapleader = ','

    " Making it so ; works like : for commands. Saves typing and eliminates :W style typos due to lazy holding shift.
    nnoremap ; :

    " Easier moving in tabs and windows
    map <C-J> <C-W>j<C-W>_
    map <C-K> <C-W>k<C-W>_
    map <C-L> <C-W>l<C-W>_
    map <C-H> <C-W>h<C-W>_

    " Wrapped lines goes down/up to next row, rather than next line in file.
    nnoremap j gj
    nnoremap k gk

    " Yank from the cursor to the end of the line, to be consistent with C and D.
    nnoremap Y y$

    """ Code folding options
    nmap <leader>f0 :set foldlevel=0<CR>
    nmap <leader>f1 :set foldlevel=1<CR>
    nmap <leader>f2 :set foldlevel=2<CR>
    nmap <leader>f3 :set foldlevel=3<CR>
    nmap <leader>f4 :set foldlevel=4<CR>
    nmap <leader>f5 :set foldlevel=5<CR>
    nmap <leader>f6 :set foldlevel=6<CR>
    nmap <leader>f7 :set foldlevel=7<CR>
    nmap <leader>f8 :set foldlevel=8<CR>
    nmap <leader>f9 :set foldlevel=9<CR>

    "clearing highlighted search
    nmap <silent> <leader>/ :nohlsearch<CR>

    " For when you forget to sudo.. Really Write the file.
    cmap w!! w !sudo tee % >/dev/null
" }

" Plugins {

    " NerdTree {
        map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
        map <leader>e :NERDTreeFind<CR>
        nmap <leader>nt :NERDTreeFind<CR>

        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.hg', '\.svn', '\.bzr']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        let NERDTreeMinimalUI=1
    " }

    " MiniBufExplorer {
        " Shortcuts for switching tabs/buffers
        map <C-p> :bprev<CR>
        map <C-n> :bnext<CR>
        let g:miniBufExplMapCTabSwitchBufs = 1 
        let g:miniBufExplModSelTarget = 1
    " }

    " Automatically hide the preview panel
    autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif

    " Esc to cancel auto-competion, but not leave insert mode
    inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"

" }

" Functions {

    " Source: http://vim.wikia.com/wiki/VimTip165
    " Cleanly deletes a buffer without messing up the window layout.
    " Modified by Evan to prompt for unsaved changes.
    function s:Kwbd(kwbdStage)
      if(a:kwbdStage == 1)
        if(!buflisted(winbufnr(0)))
          bd!
          return
        endif
        let s:kwbdBufNum = bufnr("%")
        let s:kwbdWinNum = winnr()
        windo call s:Kwbd(2)
        execute s:kwbdWinNum . 'wincmd w'
        let s:buflistedLeft = 0
        let s:bufFinalJump = 0
        let l:nBufs = bufnr("$")
        let l:i = 1
        while(l:i <= l:nBufs)
          if(l:i != s:kwbdBufNum)
            if(buflisted(l:i))
              let s:buflistedLeft = s:buflistedLeft + 1
            else
              if(bufexists(l:i) && !strlen(bufname(l:i)) && !s:bufFinalJump)
                let s:bufFinalJump = l:i
              endif
            endif
          endif
          let l:i = l:i + 1
        endwhile
        if(!s:buflistedLeft)
          if(s:bufFinalJump)
            windo if(buflisted(winbufnr(0))) | execute "b! " . s:bufFinalJump | endif
          else
            enew
            let l:newBuf = bufnr("%")
            windo if(buflisted(winbufnr(0))) | execute "b! " . l:newBuf | endif
          endif
          execute s:kwbdWinNum . 'wincmd w'
        endif
        if(buflisted(s:kwbdBufNum) || s:kwbdBufNum == bufnr("%"))
          execute ":confirm :bd " . s:kwbdBufNum
        endif
        if(!s:buflistedLeft)
          set buflisted
          set bufhidden=delete
          set buftype=
          setlocal noswapfile
        endif
      else
        if(bufnr("%") == s:kwbdBufNum)
          let prevbufvar = bufnr("#")
          if(prevbufvar > 0 && buflisted(prevbufvar) && prevbufvar != s:kwbdBufNum)
            b #
          else
            bn
          endif
        endif
      endif
    endfunction

    command! Kwbd call s:Kwbd(1)
    nnoremap <silent> <Plug>Kwbd :<C-u>Kwbd<CR>
    nmap <silent> <leader>q :Kwbd<CR>
" }
