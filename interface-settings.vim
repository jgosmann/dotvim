" Status line
set ls=2
set statusline=%n:\ %t%M%R%H%W\ \ %{fugitive#statusline()}%=[%02B]\ \ LF=%{&ff}\ T=%Y\ \ len=%L\ \ %3p%%\ %3l:%-2c\ 

" GUI settings
if has("gui_gtk2")
    set guifont=DejaVu\ Sans\ Mono\ 11
    if has("gui_running")
        set background=dark
        set lines=70 columns=120
    endif
else
    set guifont=Menlo:h14
endif
set guioptions-=T
set guioptions+=c
if has("gui_running") && has("fuoptions")
    set fuoptions=maxvert,maxhorz
endif

