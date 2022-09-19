" Vim color file
" Maintainer:	Ben Buchanan <bsbuchanan99@gmail.com>
" Last Change:	2022 May 16

" The hard-coded "8" for the line numbers and terminal status line
" is the alternate black color defined in .Xresources

hi clear

let g:colors_name = "apparition"

" Normal should come first
hi Normal		guifg=Black	guibg=White
hi Cursor		guifg=bg	guibg=fg
hi lCursor		guifg=NONE	guibg=Cyan

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi Conceal      ctermbg=black   ctermfg=white       guibg=white     guifg=black
hi DiffAdd		ctermbg=Blue	guibg=Blue
hi DiffChange		ctermbg=Magenta	guibg=Magenta
hi DiffDelete		ctermfg=Blue	ctermbg=Cyan	gui=bold	guifg=Blue	guibg=Cyan
hi DiffText		ctermbg=Red	cterm=bold	gui=bold	guibg=Red
hi Directory		ctermfg=Blue	guifg=Blue
hi ErrorMsg		ctermfg=White	ctermbg=Red	guibg=Red	guifg=White
"hi FoldColumn		ctermfg=Blue	ctermbg=Grey	guibg=Grey	guifg=Blue
"hi Folded		ctermfg=Grey	ctermbg=Black	guibg=Black	guifg=Grey
hi GitBranch    ctermbg=Black   ctermfg=Magenta     guibg=Magenta   guifg=Black
hi IncSearch		cterm=reverse	gui=reverse
hi LineNr		ctermfg=Blue	guifg=Blue
hi ModeMsg		cterm=bold	gui=bold
hi MoreMsg		ctermfg=Green	gui=bold	guifg=Green
hi NonText		ctermfg=Blue	gui=bold	guifg=gray	guibg=white
hi Pmenu		ctermfg=White	ctermbg=8	guifg=White	guibg=Black
hi PmenuSel		ctermfg=8	ctermbg=White	guifg=Black	guibg=White
hi Question		ctermfg=Green	gui=bold	guifg=Green
if &background == "light"
    hi Search		ctermfg=Black	ctermbg=Yellow	guibg=Yellow	guifg=Black
else
    hi Search		ctermfg=Black	ctermbg=Yellow	guibg=Yellow	guifg=Black
endif
hi SpecialKey		ctermfg=Blue	guifg=Blue
hi SpellBad         ctermbg=red     ctermfg=black   guibg=black     guifg=red
hi SpellCap         ctermbg=blue    ctermfg=black   guibg=black     guifg=blue
hi SpellRare        ctermbg=green   ctermfg=black   guibg=black     guifg=green
hi SpellLocal       ctermbg=yellow  ctermfg=black   guibg=black     guifg=yellow
hi StatusLine		cterm=reverse	ctermbg=black	ctermfg=white	guibg=white	guifg=black
hi StatusLineFilePercentage		ctermbg=black	ctermfg=red	guibg=red	guifg=black
hi StatusLineFilePosition		ctermbg=black	ctermfg=cyan	guibg=cyan	guifg=black
hi StatusLineFileType		    ctermbg=black	ctermfg=green	guibg=green	guifg=black
hi StatusLineNC		cterm=reverse	ctermbg=white	ctermfg=black	guibg=black	guifg=white
hi StatusLineTerm	cterm=reverse	ctermbg=black	ctermfg=white	guibg=white	guifg=black
hi StatusLineTermNC	cterm=reverse	ctermbg=black	ctermfg=8	guibg=black	guifg=black
hi TabLineFill		ctermbg=White	ctermfg=black
hi TabLine		ctermfg=White	ctermbg=black
hi TabLineSel		cterm=reverse	ctermfg=White	ctermbg=black
hi Title		ctermfg=Green	gui=bold	guifg=Green	ctermbg=Black	guibg=Black
hi VertSplit		cterm=reverse	ctermbg=White	ctermfg=Black	gui=reverse
hi Visual		ctermbg=NONE	cterm=reverse	gui=reverse	guifg=Grey	guibg=fg
hi VisualNOS		cterm=bold		gui=bold
hi WarningMsg		ctermfg=Red	guifg=Red
hi WildMenu		ctermfg=Black	ctermbg=Yellow	guibg=yellow	guifg=black

" syntax highlighting
hi Comment		cterm=NONE	ctermfg=8	gui=NONE	guifg=black
hi Constant		cterm=NONE	ctermfg=Cyan	gui=NONE	guifg=cyan
hi Identifier		cterm=NONE	ctermfg=Blue	gui=NONE	guifg=blue
hi PreProc		cterm=NONE	ctermfg=Magenta	gui=NONE	guifg=magenta
hi Special		cterm=NONE	ctermfg=Yellow	gui=NONE	guifg=yellow
hi Statement		cterm=bold	ctermfg=Red	gui=bold	guifg=red
hi Type			cterm=bold	ctermfg=Green	gui=bold	guifg=green

" vim: sw=2
