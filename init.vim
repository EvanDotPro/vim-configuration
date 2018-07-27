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
"   Author: Evan Coury, https://evan.pro/
"      URL: https://github.com/EvanDotPro/vim-configuration"
"

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.config/nvim/plugged')
    Plug 'jonathanfilip/vim-lucius'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'low-ghost/nerdtree-fugitive'
    Plug 'EvanDotPro/nerdtree-chmod'
    Plug 'EvanDotPro/nerdtree-symlink'
    Plug 'itchyny/lightline.vim'
    Plug 'godlygeek/tabular', { 'on': 'Tab' }
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb' " needed for vim-fugitive features
    Plug 'junegunn/gv.vim' " :GV for commit browser
    Plug 'tpope/vim-characterize' " hit 'ga' on unicode characters for more info
    Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
    Plug 'vim-vdebug/vdebug'
    "Plug 'yuttie/comfortable-motion.vim'
    Plug 'junegunn/vim-peekaboo'
    Plug 'moll/vim-bbye'
    Plug 'ap/vim-buftabline'
    Plug 'gcavallanti/vim-noscrollbar'
    Plug 'junegunn/indentLine' " (alternative nathanaelkane/vim-indent-guides)
    Plug 'ap/vim-css-color'
    Plug 'lukevers/php-foldexpr.vim'
    Plug 'alvan/vim-php-manual'
    Plug 'mattn/webapi-vim'
    Plug 'mattn/gist-vim'
    Plug 'ervandew/supertab'
    Plug 'Raimondi/delimitMate'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'kristijanhusak/deoplete-phpactor'
    Plug 'w0rp/ale'
call plug#end()

let g:phpactorBranch = "develop"
let g:ale_completion_enabled = 0
let g:ale_php_phpstan_level = 7
let g:deoplete#enable_at_startup = 1
let g:comfortable_motion_no_default_key_mappings = 1
let g:vdebug_options = {}
let g:buftabline_show = 1
let g:buftabline_indicators = 1
let g:indentLine_char = '┆'
let g:phpfold_group_iftry = 1
let g:phpfold_text_right_lines = 1
let g:phpfold_text_percent = 0
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1

source ~/.config/nvim/projects.vim

" Include use statement
nmap <Leader>u :call phpactor#UseAdd()<CR>

" Invoke the context menu
nmap <Leader>mm :call phpactor#ContextMenu()<CR>

" Invoke the navigation menu
nmap <Leader>nn :call phpactor#Navigate()<CR>

" Goto definition of class or class member under the cursor
nmap <Leader>o :call phpactor#GotoDefinition()<CR>

" Transform the classes in the current file
nmap <Leader>tt :call phpactor#Transform()<CR>

" Generate a new class (replacing the current file)
nmap <Leader>cc :call phpactor#ClassNew()<CR>

" Extract expression (normal mode)
nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>

" Extract expression from selection
vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>

" Extract method from selection
vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>
autocmd FileType php setlocal omnifunc=phpactor#Complete

inoremap <S-Tab> <C-V><Tab>

set background=dark
colorscheme lucius

set virtualedit=all      " allow for cursor beyond last character
set history=1000         " Store a ton of history (default is 20)
set hidden               " allow buffer switching without saving
set mouse=a              " automatically enable mouse usage
"set mousemodel=popup    " Konsole mouse bugs
set laststatus=2         " Always show status bar
set shortmess+=I         " Disable splash text
set number               " line numbers on
set cpoptions+=$         " cool trick to show what you're replacing
set showmatch            " show matching brackets/parenthesis
set showcmd              " show multi-key commands as you type
set list                 " enable listchars setting?
set listchars=tab:▸\     " show tabs
set shiftwidth=4         " use indents of 4 spaces
set expandtab            " tabs are spaces, not tabs
set tabstop=4            " an indentation every four columns
set softtabstop=4        " let backspace delete indent
set completeopt-=preview " disable preview scratch window
set lazyredraw           " speed up scrolling a bit
set guicursor=           " konsole font size bug
set cursorline           " highlight current line
set shortmess+=c         " suppress annoying messages
set cmdheight=2          " two line cmd area
set scrolloff=3          " always keep some lines above/below the cursor when scrolling
set nofoldenable         " don't fold by default
set foldlevel=1

hi TabLine      guifg=#333 guibg=#222 gui=none ctermfg=254 ctermbg=238 cterm=none
hi TabLineSel   guifg=#666 guibg=#222 gui=bold ctermfg=231 ctermbg=235 cterm=bold
hi TabLineFill  guifg=#999 guibg=#222 gui=none ctermfg=254 ctermbg=238 cterm=none

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeChDirMode = 2
"let g:NERDTreeMouseMode = 3
let g:NERDTreeLimitedSyntax = 1
let g:NERDTreeCascadeSingleChildDir = 0
let g:NERDTreeCascadeOpenSingleChildDir = 0
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let NERDTreeMinimalUI=1

"set clipboard=unnamedplus
map <leader>v "+gP
map <leader>c "+y
map <C-A> ggVG

" Iniertial scrolling :)
"noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
"noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

map <silent> <C-e> :silent NERDTreeToggle<CR>
nmap <silent> <leader>w :w<CR>
map <silent> <C-b> :Buffers<CR>
map <silent> <C-f> :Files<CR>
autocmd! FileType fzf tnoremap <buffer> <leader>q <c-c>
nnoremap <silent> <Leader>q :Bdelete<CR>
nnoremap <silent> <C-w> :Bdelete<CR>
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

set noshowmode " redundant to show mode in command line, status line has it.

let g:lightline = {
      \ 'colorscheme': 'evandotpro',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive' ], [ 'myfilename' ]],
      \   'right': [ [ 'scroll' ], [ 'fileinfo' ], [ 'filetype' ] ]
      \ },
      \ 'inactive': {
      \   'left': [ [ 'myfilename' ] ],
      \   'right': [ [ 'lineinfo' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"[RO]":""}',
      \   'lineinfo': '%3p%% %2l:%-2v',
      \   'fileinfo': '%{&fenc!=#""?&fenc:&enc}[%{&ff}] F%{&fdl}'
      \ },
      \ 'component_visible_condition': {
      \   'fugitive': '&fugitive',
      \   'mode': '&mode'
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'myfilename': 'LightlineFilename',
      \   'filetype': 'LightlineFiletype',
      \   'mode': 'LightlineMode',
      \   'scroll': 'NoScrollbarForLightline'
      \ },
      \ 'component_expand': {
      \ },
      \ 'component_type': { 'preload1': 'hidden' },
      \ 'separator':    { 'left': "", 'right': "" },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! NoScrollbarForLightline()
    return noscrollbar#statusline(10,'■','◫',['◧'],['◨'])
    "return noscrollbar#statusline()
endfunction

function! LightlineFiletype()
  if &filetype == 'nerdtree'
    return ''
  endif
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineMode()
  if &filetype == 'nerdtree'
    "hi! link StatusLineNC LightlineRight_normal_0
    "hi! link StatusLine LightlineRight_normal_0
    "let g:lightline.component_type.mode='hidden'
    "let g:lightline.component_type.fugative='hidden'
    "let g:lightline.component_type.myfilename='hidden'
    "call lightline#init()
    "call lightline#update()
    return ''
  endif
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! LightlineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightlineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! LightlineFugitive()
  if &filetype == 'nerdtree'
    return ''
  endif
"  if expand('%:t') =~ 'NERD_tree'
"    call lightline#disable()
"  else
"    call lightline#enable()

  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? 'Branch: '.branch : '[not in git]'
  endif
  return ' ✗'
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

let s:base03 = [ '#242424', 235 ]
let s:base023 = [ '#353535 ', 236 ]
let s:base02 = [ '#444444 ', 238 ]
let s:base01 = [ '#585858', 240 ]
let s:base00 = [ '#666666', 242  ]
let s:base0 = [ '#808080', 244 ]
let s:base1 = [ '#969696', 247 ]
let s:base2 = [ '#a8a8a8', 248 ]
let s:base3 = [ '#d0d0d0', 252 ]
let s:yellow = [ '#cae682', 180 ]
let s:orange = [ '#e5786d', 173 ]
let s:red = [ '#e5786d', 203 ]
let s:magenta = [ '#f2c68a', 216 ]
let s:blue = [ '#8ac6f2', 117 ]
let s:cyan = s:blue
let s:green = [ '#95e454', 119 ]
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base02, s:blue, 'bold' ], [ s:base3, s:base01 ] ]
"let s:p.normal.right = [ [ s:base02, s:base0 ], [ s:base1, s:base01 ] ]
let s:p.normal.right = [ [ s:base02, s:blue ], [ s:base1, s:base01 ] ]
let s:p.inactive.right = [ [ s:base023, s:base01 ], [ s:base00, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base1, s:base02 ], [ s:base00, s:base023 ] ]
let s:p.insert.left = [ [ s:base02, s:green, 'bold' ], [ s:base3, s:base01 ] ]
let s:p.insert.right = [ [ s:base02, s:green ], [ s:base1, s:base01 ] ]
let s:p.replace.left = [ [ s:base023, s:red, 'bold' ], [ s:base3, s:base01 ] ]
let s:p.replace.right = [ [ s:base023, s:red ], [ s:base1, s:base01 ] ]
let s:p.visual.left = [ [ s:base02, s:magenta, 'bold' ], [ s:base3, s:base01 ] ]
let s:p.visual.right = [ [ s:base02, s:magenta ], [ s:base1, s:base01 ] ]
let s:p.normal.middle = [ [ s:base2, s:base02 ] ]
"let s:p.inactive.middle = [ [ s:base1, s:base023 ] ]
let s:p.inactive.middle = [ [ s:base2, s:base02 ] ]
let s:p.tabline.left = [ [ s:base3, s:base00 ] ]
let s:p.tabline.tabsel = [ [ s:base3, s:base03 ] ]
let s:p.tabline.middle = [ [ s:base2, s:base02 ] ]
let s:p.tabline.right = [ [ s:base2, s:base00 ] ]
let s:p.normal.error = [ [ s:base03, s:red ] ]
let s:p.normal.warning = [ [ s:base023, s:yellow ] ]
let s:p.normal.hidden = [ [ s:base023, s:base023 ] ]

let g:lightline#colorscheme#evandotpro#palette = lightline#colorscheme#flatten(s:p)
