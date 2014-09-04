
function! DiffToggle()
    if &diff
        diffoff
    else
        diffthis
    endif
endfunction

function! PythonAndRopeComplete(findstart, base)
    if a:findstart
        let result = pythoncomplete#Complete(a:findstart, a:base)
        let s:useRope = 1
        if result > 0
            silent! if len(pythoncomplete#Complete(0, a:base)) > 0
                let s:useRope = 0
            endif
        endif
        if s:useRope
            let result = RopeOmni(a:findstart, a:base)
        endif
    else
        if s:useRope
            let result = RopeOmni(a:findstart, a:base)
        else
            let result = pythoncomplete#Complete(a:findstart, a:base)
        endif
    endif
    return result
endfunction

fun! Make(cdToDir, test)
    exe "cd " . a:cdToDir
    new
    make
    call feedkeys("<CR>")
    cd -
    try
        cfirst
        cn
    catch /^.*E553.*/
        q
        if a:test != ""
            call RunTests(a:test)
        endif
    endtry
endfun

fun! RunTests(cmd)
    let l:bufferName = "RunTests"
    let l:winnr = bufwinnr(l:bufferName)
    if l:winnr != -1
        exe l:winnr . "wincmd w"
    elseif bufexists(l:bufferName)
        exe "sbuffer " . l:bufferName
    else
        new
        exe "file " . l:bufferName
    endif
    set buftype=nofile
    set bufhidden=hide
    setlocal noswapfile
    exe "1,$d"
    exe "r!" . a:cmd
endfun

" Adapted from http://stackoverflow.com/questions/3881534/set-python-virtualenv-in-vim
fun! LoadVirtualEnv(path)
    let activate_this = a:path . '/bin/activate_this.py'
    if getftype(a:path) == "dir" && filereadable(activate_this)
        python << EOF
import os
import sys
import vim
activate_this = vim.eval('l:activate_this')
execfile(activate_this, dict(__file__=activate_this))
if 'PYTHONPATH' not in os.environ:
    os.environ['PYTHONPATH'] = ':' + os.getcwd() + ':' + ':'.join(sys.path)
EOF
        echoerr 'Success.'
    else
        echoerr 'Not a valid virtualenv.'
    endif
endfunction
