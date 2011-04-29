" Chmod/Executable NerdTree Plugin
" Author: Evan Coury (http://blog.evan.pro/)
if exists("g:loaded_nerdtree_execoff_menuitem")
    finish
endif
let g:loaded_nerdtree_execoff_menuitem = 1

call NERDTreeAddMenuItem({
            \ 'text': '(x)chmod -x',
            \ 'shortcut': 'x',
            \ 'callback': 'NERDTreeExecFileOff',
            \ 'isActiveCallback': 'NERDTreeExecFileActive' })

function! NERDTreeExecFileOff()
    let curNode = g:NERDTreeFileNode.GetSelected()
    let chmodArg = input("chmod: ", '-x')
    let cmd = 'chmod ' . chmodArg . ' ' . curNode.path.str({'escape': 1})

    if cmd != ''
        let success = system(cmd)
        call curNode.refresh()
        call NERDTreeRender()
    else
        echo "Aborted"
    endif
endfunction

if exists("g:loaded_nerdtree_execon_menuitem")
    finish
endif
let g:loaded_nerdtree_execon_menuitem = 1

call NERDTreeAddMenuItem({
            \ 'text': '(x)chmod +x',
            \ 'shortcut': 'x',
            \ 'callback': 'NERDTreeExecFileOn',
            \ 'isActiveCallback': 'NERDTreeExecFileNotActive' })

function! NERDTreeExecFileNotActive()
    let curNode = g:NERDTreeFileNode.GetSelected()
    return !curNode.path.isDirectory && !curNode.path.isExecutable
endfunction

function! NERDTreeExecFileOn()
    let curNode = g:NERDTreeFileNode.GetSelected()
    let chmodArg = input("chmod: ", '+x')
    let cmd = 'chmod ' . chmodArg . ' ' . curNode.path.str({'escape': 1})

    if cmd != ''
        let success = system(cmd)
        call curNode.refresh()
        call NERDTreeRender()
    else
        echo "Aborted"
    endif
endfunction

