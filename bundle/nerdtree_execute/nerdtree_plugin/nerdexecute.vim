"""""""""""""""""" Testing NerdTree Plugin
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
    let treenode = g:NERDTreeFileNode.GetSelected()
    "echo "==========================================================\n"
    "echo "Complete the command to execute (add arguments etc):\n"
    let cmd = 'chmod -x ' . treenode.path.str({'escape': 1})
    "let cmd = input(':!', cmd . ' ')

    if cmd != ''
        let success = system(cmd)
        call treenode.refresh()
        call NERDTreeRender()
        echo "\n"
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
    let node = g:NERDTreeFileNode.GetSelected()
    return !node.path.isDirectory && !node.path.isExecutable
endfunction

function! NERDTreeExecFileOn()
    let treenode = g:NERDTreeFileNode.GetSelected()
    "echo "==========================================================\n"
    "echo "Complete the command to execute (add arguments etc):\n"
    let cmd = 'chmod +x ' . treenode.path.str({'escape': 1})
    "let cmd = input(':!', cmd . ' ')

    if cmd != ''
        let success = system(cmd)
        call treenode.refresh()
        call NERDTreeRender()
        echo "\n"
    else
        echo "Aborted"
    endif
endfunction

