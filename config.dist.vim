"--------------
" Misc Settings
"--------------

" DBGp Debugger Port
let g:debuggerPort = 9001


"----------
" Shortcuts
"----------
let g:scToggleNERDTree        = '<C-F6>'
let g:scWriteFile             = '<leader>w'
let g:scCopyToSysClipboard    = '<leader>c'
let g:scPasteFromSysClipboard = '<leader>v'
let g:scSelectAll             = '<C-a>'
let g:scZenCodingExpand       = '<C-z>'
let g:scGeneratePhpDoc        = '<C-d>'
let g:scCloseBufferClean      = '<leader>q'
let g:scOpenLastClosedBuffer  = '<leader>t'

"
"----------
" Usability
"----------
let g:mapF1ToEsc = 1 " Map F1 to esc to prevent accidental opening of the help window


"------------
" AESTHETICS
"------------

" Set the color scheme
set background=dark
"colorscheme solarized
colorscheme lucius

" Set the font
set guifont=Anonymous\ Pro\ 11
"set guifont=Monospace\ 9

" Show a column line to help with coding standards
let g:showColumnMarker = 0

" At which column to show the line
let g:columnMarkerCount = 80


"-----------------------------
" File Tree Options (NERDTree)
"-----------------------------

" This is the path that you want the file tree to initially display
let g:startDir = '/path/to/workspace'

" Open the file tree when Vim starts
let g:openTreeOnStart = 1

" Any files/patterns you wish to hide from the file tree (regex patterns)
"let NERDTreeIgnore=['\.buildpath$', '\.project$','\.settings$']

" Make the file tree show hidden files
let NERDTreeShowHidden = 1


"--------------------------------
" GitHub Gist Integration Options
"--------------------------------

" Let GitHub to detect filetype by filename
let g:gist_detect_filetype = 1

" If you want the Gist URL to be copied to your clipboard, 
" uncomment the appropriate line for your platform.
"let g:gist_clip_command = 'xclip -selection clipboard' " Linux
"let g:gist_clip_command = 'pbcopy'                     " Mac
"let g:gist_clip_command = 'putclip'                    " Cygwin / Windows

" If you want to launch the Gist in your browser automatically
"let g:gist_open_browser_after_post = 1
"let g:gist_browser_command = 'firefox %URL% &'

" Set this to your GitHub username and token
"let g:github_user = 'YourUsername'
"let g:github_token = 'yourtokengoeshere'


"--------------------------------
" PHP Docblock Generation Options
"--------------------------------

" Default values for PHP comment blocks
let g:pdoc_cfg_Package = ''
let g:pdoc_cfg_Version = '$Id: $'
let g:pdoc_cfg_Author = 'Your Name <user@domain.tld>'
let g:pdoc_cfg_Copyright = '2010 Organization'
let g:pdoc_cfg_License = 'GPL Version 3.0 {@link http://www.gnu.org/licenses/gpl-3.0.txt}'

" Default parameter type
let g:pdoc_cfg_Type = 'mixed'

" Default return value
let g:pdoc_cfg_ReturnVal = 'void'

" Wether to create @uses tags for implementation of interfaces and inheritance
let g:pdoc_cfg_Uses = 1

" :set paste before documenting (1|0)? Recommended.
let g:pdoc_cfg_paste = 1

" Wether for PHP5 code PHP4 tags should be set, like @access,... (1|0)?
let g:pdoc_cfg_php4always = 0
 
" Wether to guess scopes after PEAR coding standards:
" $_foo/_bar() == <private|protected> (1|0)?
let g:pdoc_cfg_php4guess = 1

" If you selected 1 for the last value, this scope identifier will be used for
" the identifiers having an _ in the first place.
let g:pdoc_cfg_php4guessval = 'protected'


