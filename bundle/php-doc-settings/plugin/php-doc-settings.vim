" This is a hackish fix because the php-doc.vim plugin does not
" check if config variables are already set.

" For these values, provide defaults because php-doc.vim's are lame
if exists('g:pdoc_cfg_Version')
  let g:pdv_cfg_Version = g:pdoc_cfg_Version
else
  let g:pdv_cfg_Version = '$Id: $'
endif
if exists('g:pdoc_cfg_Author')
  let g:pdv_cfg_Author = g:pdoc_cfg_Author
else
  let g:pdv_cfg_Author = 'Your Name <user@domain.tld>'
endif
if exists('g:pdoc_cfg_Copyright')
  let g:pdv_cfg_Copyright = g:pdoc_cfg_Copyright
else
  let g:pdv_cfg_Copyright = '2010 Organization'
endif
if exists('g:poc_cfg_License')
  let g:pdv_cfg_License = g:poc_cfg_License
else
  let g:pdv_cfg_License = 'GPL Version 3.0 {@link http://www.gnu.org/licenses/gpl-3.0.txt}'
endif

" For these, it's okay to use php-doc.vim's default values
if exists('g:pdoc_cfg_Package')
  let g:pdv_cfg_Package = g:pdoc_cfg_Package
endif
if exists('g:pdoc_cfg_Type')
  let g:pdv_cfg_Type = g:pdoc_cfg_Type
endif
if exists('g:pdoc_cfg_ReturnVal')
  let g:pdv_cfg_ReturnVal = g:pdoc_cfg_ReturnVal
endif
if exists('g:pdoc_cfg_Uses')
  let g:pdv_cfg_Uses = g:pdoc_cfg_Uses
endif
  if exists('g:pdoc_cfg_paste')
let g:pdv_cfg_paste = g:pdoc_cfg_paste
endif
  if exists('g:pdoc_cfg_php4always')
let g:pdv_cfg_php4always = g:pdoc_cfg_php4always
endif
  if exists('g:pdoc_cfg_php4guess')
let g:pdv_cfg_php4guess = g:pdoc_cfg_php4guess
endif
if exists('g:pdoc_cfg_php4guessval')
  let g:pdv_cfg_php4guessval = g:pdoc_cfg_php4guessval
endif
