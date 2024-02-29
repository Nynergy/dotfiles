" Automatically send errors to the quickfix window
:command -nargs=* Make make <args> | cwindow 3
map <C-C> :silent Make clean<CR>:Make<CR>:redraw!<CR>
