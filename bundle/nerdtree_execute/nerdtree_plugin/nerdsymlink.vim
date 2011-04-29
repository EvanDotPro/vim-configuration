" Symlink NerdTree Plugin
" Author: Evan Coury (http://blog.evan.pro/)
"
if exists("g:loaded_nerdtree_symlink_menuitem")
    finish
endif
let g:loaded_nerdtree_symlink_menuitem = 1

call NERDTreeAddMenuItem({
            \ 'text': '(s)ymlink',
            \ 'shortcut': 's',
            \ 'callback': 'NERDTreeSymlinker'})

function! NERDTreeSymlinker()
    let curNode = g:NERDTreeFileNode.GetSelected()
    let symlinkPath = input("Create a symbolic link\n" .
                          \ "==========================================================\n" .
                          \ "Enter the path to symlink here:                           \n" .
                          \ "", curNode.path.str(), "file")
    if symlinkPath ==# ''
        echo "Symlink Creation Aborted."
        return
    endif

    try
        let cmd = 'ln -s ' . curNode.path.str({'escape': 1}) . ' ' .shellescape(symlinkPath)

        if cmd != ''
            let success = system(cmd)
            call curNode.refresh()
            call NERDTreeRender()
            call feedkeys("R")
        else
            echo "Symlink Creation Aborted."
        endif
    catch /^NERDTree/
        echo "Symlink Not Created."
    endtry
endfunction
