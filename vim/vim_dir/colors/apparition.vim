" Vim color file

" Maintainer:       Ben Buchanan
" Version:          1.0.0
" Last Change:      29-Feb-2024

hi clear

let g:colors_name = "apparition"

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi ColorColumn  ctermbg=Magenta                 guibg=Magenta
hi Conceal      ctermbg=Black   ctermfg=White   guibg=White     guifg=Black
hi CursorColumn                                                                 cterm=None      gui=None
hi CursorLine                                                                   cterm=None      gui=None
hi CursorLineNr                 ctermfg=Yellow                  guifg=Yellow    cterm=None      gui=None
hi DiffAdd		ctermbg=Green   ctermfg=Black   guibg=Green     guifg=Black
hi DiffChange   ctermbg=Yellow  ctermfg=Black   guibg=Yellow    guifg=Yellow
hi DiffDelete   ctermbg=Red     ctermfg=Black	guibg=Red       guifg=Black
hi DiffText		ctermbg=Black   ctermfg=8       guibg=Black     guifg=Gray      cterm=None      gui=None
hi Directory                    ctermfg=Blue                    guifg=Blue
hi ErrorMsg		ctermbg=Red     ctermfg=Black   guibg=Red       guifg=Black
hi Folded                       ctermfg=Cyan                    guifg=Cyan
hi FoldColumn                   ctermfg=Cyan                    guifg=Cyan
hi IncSearch                                                                    cterm=Reverse   gui=Reverse
hi LineNr		                ctermfg=Blue	                guifg=Blue
hi ModeMsg		                                                                cterm=Bold	    gui=Bold
hi MoreMsg		                ctermfg=Green                   guifg=Green
hi NonText		                ctermfg=Blue                    guifg=Blue
hi Normal                                                                       cterm=None      gui=None
hi Pmenu		ctermbg=8       ctermfg=Black   guibg=Gray      guifg=Black
hi PmenuSbar    ctermbg=Black   ctermfg=White   guibg=Black     guifg=White
hi PmenuSel		ctermbg=White   ctermfg=Black   guibg=White     guifg=Black
hi PmenuThumb                   ctermfg=Magenta                 guifg=Magenta
hi Question		                ctermfg=Green	                guifg=Green
hi Search		ctermbg=Yellow	ctermfg=Black   guibg=Yellow	guifg=Black
hi SignColumn                   ctermfg=Cyan                    guifg=Cyan
hi SpecialKey                   ctermfg=Blue	                guifg=Blue
hi SpellBad     ctermbg=Red     ctermfg=Black   guibg=Red       guifg=Black
hi SpellCap     ctermbg=Blue    ctermfg=Black   guibg=Blue      guifg=Black
hi SpellRare    ctermbg=Green   ctermfg=Black   guibg=Green     guifg=Black
hi SpellLocal   ctermbg=Yellow  ctermfg=Black   guibg=Yellow    guifg=Black
hi StatusLine   ctermbg=Black   ctermfg=White   guibg=Black     guifg=White     cterm=None      gui=None
" NOTE: We need to shift things over for these long ones
hi StatusLineFilePercentage		ctermbg=Black	ctermfg=Red	    guibg=Red	    guifg=Black
hi StatusLineFilePosition		ctermbg=Black	ctermfg=Cyan	guibg=Cyan	    guifg=Black
hi StatusLineFileType		    ctermbg=Black	ctermfg=Green	guibg=Green	    guifg=Black
hi StatusLineNC		            ctermbg=Black   ctermfg=8       guibg=Black     guifg=Gray
hi StatusLineTerm               ctermbg=Black   ctermfg=White   guibg=Black     guifg=White
hi StatusLineTermNC             ctermbg=Black   ctermfg=8       guibg=Black     guifg=Gray
" NOTE: End of column shift
hi TabLine                      ctermfg=White                   guifg=White
hi TabLineFill                  ctermfg=White                   guifg=White
hi TabLineSel   ctermbg=Yellow  ctermfg=Black   guibg=Yellow    guifg=Black     cterm=None      gui=None
hi Title                        ctermfg=Green                   guifg=Green     cterm=Bold      gui=Bold
hi VertSplit    ctermbg=Black   ctermfg=White   guibg=Black     guifg=Black     cterm=None      gui=None
hi Visual                                                                       cterm=Reverse   gui=Reverse
hi VisualNOS                                                                    cterm=Bold		gui=Bold
hi WarningMsg                   ctermfg=Red                     guifg=Red       cterm=Bold      gui=Bold
hi WildMenu     ctermbg=Yellow  ctermfg=Black   guibg=Yellow    guifg=Black

" Syntax Highlighting
hi Comment                      ctermfg=8                    guifg=Gray
hi Constant                     ctermfg=Cyan                    guifg=Cyan
hi Cursor                                                                       cterm=None      gui=None
hi lCursor                                                                      cterm=None      gui=None
hi Error        ctermbg=Red     ctermfg=Black   guibg=Red       guifg=Black
hi Identifier                   ctermfg=Blue                    guifg=Blue      cterm=None      gui=None
hi MatchParen   ctermbg=Cyan    ctermfg=Black   guibg=Cyan      guifg=Black
hi PreProc                      ctermfg=Magenta                 guifg=Magenta
hi Special                      ctermfg=Yellow                  guifg=Yellow
hi Statement                    ctermfg=Red                     guifg=Red       cterm=Bold      gui=Bold
hi Todo         ctermbg=Yellow  ctermfg=Black   guibg=Yellow    guifg=Black
hi Type                         ctermfg=Green                   guifg=Green     cterm=Bold      gui=Bold
hi Underlined                   ctermfg=Magenta                 guifg=Magenta   cterm=Underline gui=Underline

" vim: sw=2
