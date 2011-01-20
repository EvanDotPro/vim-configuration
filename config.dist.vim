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
