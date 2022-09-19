" Automatically build with cargo and send errors to copen
compiler cargo
map <C-C> :silent make build <bar> cwindow<CR>:redraw!<CR>
