
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

