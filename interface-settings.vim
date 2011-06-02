" Status line
set ls=2
set statusline=%n:\ %t%M%R%H%W\ \ %{fugitive#statusline()}%=[%02B]\ \ LF=%{&ff}\ T=%Y\ \ len=%L\ \ %3p%%\ %3l:%-2c\ 

" GUI settings
set guifont=Menlo:h14
set guioptions-=T
set guioptions+=c
if has("gui_running")
    set fuoptions=maxvert,maxhorz
endif

