" This is the path that you want NERDTree to initially display
let g:startDir = '~/Sites/Playerize/superrewards'

let mapleader="@"

let g:phpqa_messdetectory_cnd='~/usr/local/bin/phpmd'

let g:airline_powerline_fonts = 1

let g:phpqa_codesniffer_args = "--standard=PSR2"

let g:phpqa_messdetector_ruleset = "cleancode,codesize,design,unusedcode"

let g:neocomplete#enable_at_startup = 1

autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:phpcomplete_index_composer_command = "composer"

let g:vdebug_options = {
\   'path_maps': {
\    '/home/vagrant/perk-tv-api': '/Users/thomasveilleux/Sites/Github/perk-api-v2', 
\    '/srv/prod/kitn' : '/Users/thomasveilleux/Sites/Playerize/superrewards',
\    '/srv/prod/kitn/www/live/srwallfron' : '/Users/thomasveilleux/Sites/Playerize/sr-wallfront'
\   },
\ }
