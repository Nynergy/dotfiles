" .vimrc
" Maintainer: Ben Buchanan @ Firmament

" COLORS
set background=dark
set t_Co=256
colo apparition
syntax on

" PATH & MENUS
set path+=**
set wildmenu

" TABS & INDENTS
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" FOLDS
"autocmd BufWinLeave,BufLeave,BufWritePost,BufHidden,QuitPre ?* nested silent! mkview!
"autocmd BufWinEnter ?* silent loadview
"
" MISC
set number relativenumber
set nohlsearch
set nocompatible

" CUSTOM COMMANDS
nnoremap c* *Ncgn
command! MakeTags !ctags -R .
map ` <C-A>
map g` g<C-A>

" CUSTOM BINDINGS
map <F4> :setlocal spell!<CR>
"map <F5> :bo term ++rows=15<CR>
map <F5> ==<Esc>o<Esc>:put =strftime('%A, %B %d, %Y ') <CR>
        \I-- <Esc>:exec 'norm '.(72 - strlen(getline('.'))).'A-'<CR>o<CR><CR><CR>
        \-- References <Esc>:exec 'norm '.(72 - strlen(getline('.'))).'A-'<CR>
        \o<CR>- N/A<Esc>:5<CR>i
map <F6> :Goyo<CR>
map <F7> :call ToggleNetRW()<CR>

" VIMWIKI
let mapleader = ","
let g:vimwiki_list = [{'path':'~/Documents/VimWiki'}]
hi def link VimwikiLink PreProc

map <Leader>h :VimwikiSplitLink<CR><C-W>r
map <Leader>v :VimwikiVSplitLink<CR><C-W>r

command! Diary VimwikiDiaryIndex
augroup vimwikigroup
    autocmd!
    " Automatically update links on read diary
    autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end

" Fix vimwiki filetype collision with markdown
let g:vimwiki_ext2syntax = {}

" NETRW
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex

function ToggleNetRW()
    if exists("g:netrw_buffer") && bufexists(g:netrw_buffer)
        exe "bd".g:netrw_buffer | unlet g:netrw_buffer
    else
        Vex | let g:netrw_buffer=bufnr("%")
	vertical resize 25
    endif
endfunction

" STATUSLINE
set laststatus=2

function StatuslineGit()
    let l:gitBranchExists = trim(system("git rev-parse --is-inside-work-tree"))
    if l:gitBranchExists is# 'true'
        let g:gitBranch = '  ' . trim(system("git rev-parse --abbrev-ref HEAD 2>/dev/null | sed 's:HEAD:N/A:g'")) . ' '
    else
        let g:gitBranch = ''
    endif
    return g:gitBranch
endfunction

set statusline=
set statusline+=%#GitBranch#
set statusline+=%.30{StatuslineGit()}
set statusline+=%#Conceal#
set statusline+=\ %t
set statusline+=\ %m%r%h
set statusline+=\ %=
set statusline+=\ %#StatusLineFileType#
set statusline+=\ %Y
set statusline+=\ %#StatusLineFilePosition#
set statusline+=\ %(%4l,%-3c%)
set statusline+=\ %#StatusLineFilePercentage#
set statusline+=\ %3P\ 
