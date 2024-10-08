set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "ginseng"

let s:gbeige1 = '#ddd6c0'
let s:gbeige2 = '#bbb490'
let s:gbrown1 = '#141208'
let s:ggray1 = '#aeaeae'
let s:ggray2 = '#747474'
let s:gorange1 = '#df8800'
let s:gorange2 = '#ff9800'
let s:gred1 = '#aa0000'
let s:gred2 = '#521800'
let s:gsteel = '#8898b2'

execute 'hi Normal  guifg=' . s:gbeige1   . ' gui=NONE'
hi Normal           guifg=s:beige1   guibg=#141208   gui=NONE    "normal text
hi NormalFloat      guifg=s:beige2   guibg=#303232   gui=NONE    "normal text in floating windows
hi NormalNC         guifg=NONE      guibg=#080804   gui=NONE    "normal text in non-current windows
hi NonText          guifg=#666046   guibg=bg        gui=NONE    "'@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl!-EndOfBuffer|
hi Folded           guifg=s:ggray1   guibg=#3a3232   gui=italic  "line used for closed folds
hi Comment          guifg=s:ggray2                  gui=italic  "any comment

hi String           guifg=s:ggray1
hi Character        guifg=s:ggray1
hi Number           guifg=s:gorange1
hi Float            guifg=s:gorange1
hi Boolean          guifg=s:gorange2

hi Identifier       guifg=#998877                   gui=NONE
hi Function         guifg=s:gorange1

hi Type             guifg=#ad5640                   gui=NONE
hi Statement        guifg=s:gsteel                   gui=NONE
hi Keyword          guifg=s:gsteel                   gui=NONE
hi Constant         guifg=s:gorange2                   gui=NONE

hi Error            guifg=s:gred1 guibg=#ffffff     gui=reverse cterm=reverse
hi ErrorMsg         guifg=s:gred1 guibg=#ffffff     gui=reverse cterm=reverse

hi Special          guifg=#68a208                   gui=NONE
hi PreProc          guifg=#bbaa88                   gui=NONE
hi Title            guifg=#778888                   gui=NONE
hi Todo             guifg=#927292   guibg=#202020   gui=italic,underline,bold

hi Cursor           guifg=NONE      guibg=#626262   gui=NONE
hi nCursor          guifg=black     guibg=green1    gui=NONE
hi vCursor          guifg=black     guibg=magenta   gui=NONE
hi iCursor          guifg=black     guibg=#f08080   gui=NONE
hi cCursor                                          gui=reverse

hi CursorColumn                     guibg=#000000
hi CursorLine                       guibg=#000000
hi CursorLineNr     guifg=#ffee99   guibg=bg        gui=none
hi ColorColumn                      guibg=#262626               ctermbg=NONE

" Structural
hi LineNr           guifg=#807060   guibg=#000000   gui=NONE
hi SignColumn       guifg=#333344   guibg=#363636   gui=NONE
hi StatusLine       guifg=#000000   guibg=#9d9080   gui=bold
hi StatusLineNC     guifg=#000000   guibg=#48403a   gui=italic
hi VertSplit        guifg=#48403a   guibg=#48403a   gui=NONE
hi FoldColumn       guifg=#68838b   guibg=#4B4B4B   gui=bold
hi EndOfBuffer                      guibg=NONE                  ctermbg=NONE

" Tabs
hi TabLine          guifg=NONE      guibg=#9d9080   gui=NONE
hi TabLineSel       guibg=#2c2824   guifg=#ddd6c0   gui=bold
hi TabLineFill      guifg=#9d9080   guibg=#ddd6c0   gui=reverse

" Search
hi IncSearch        guifg=#000000   guibg=#ff8800   gui=BOLD
hi Search           guifg=#000000   guibg=#ffffbb   gui=BOLD

" Selection
hi Visual           guifg=#000000   guibg=#768798   gui=NONE

" Pop-up Menus
hi Pmenu            guifg=#000000   guibg=#ccc0aa
hi PmenuSel         guifg=#000000   guibg=#ee9944

" Messaging
hi ModeMsg          guifg=#000000   guibg=#00ff00   gui=bold
hi MoreMsg          guifg=#2e8b57   guibg=bg        gui=bold
hi ErrorMsg         guifg=#ff6a6a   guibg=NONE      gui=bold
hi WarningMsg       guifg=#ee9a00   guibg=bg        gui=NONE

" Spelling
hi SpellBad         guisp=#ee2c2c   gui=undercurl
hi SpellCap         guisp=#0000ff   gui=undercurl
hi SpellLocal       guisp=#008b8b   gui=undercurl
hi SpellRare        guisp=#ff00ff   gui=undercurl

" Diff
hi DiffAdd                          guibg=#344828   gui=NONE
hi DiffDelete       guifg=#7a0400   guibg=#840400   gui=NONE
hi DiffChange                       guibg=#222860   gui=NONE
hi DiffText                         guibg=#244486   gui=NONE

" Other
hi Directory        guifg=#ddaa66   guibg=bg        gui=NONE
hi MatchParen       guifg=#eee000   guibg=bg        gui=bold
hi SpecialKey       guifg=#cc6644   guibg=bg        gui=bold
hi WildMenu         guifg=#000000   guibg=#87ceeb   gui=NONE

" Terminal
hi TermCursor       guifg=#ffffff   gui=reverse

""" LSP
hi LspDiagnosticsUnderlineError guifg=#ee2c2c gui=undercurl
hi LspDiagnosticsUnderlineWarning guifg=#ee9a00 gui=undercurl
" TODO
" LspDiagnosticsUnderlineInformation
" LspDiagnosticsUnderlinehint

""" TreeSitter
"hi link TSCurrentScope NormalInactive

""" HTML
hi @tag guifg=#8898b2   gui=NONE
hi @tag.attribute guifg=#ad5640   gui=NONE

" VirtColumn
hi VirtColumn       guifg=#303032

" Diff - fugitive
hi diffAdded        guibg=#374229   gui=NONE
hi diffRemoved      guibg=#521800   gui=NONE

" Indent guides
hi IblIndent                  guifg=#303032       gui=nocombine
hi IblWhitespace              guifg=#303032       gui=nocombine
"hi IndentBlanklineSpaceCharBlankline    guifg=#303032       gui=nocombine
hi IblScope           guifg=#606060       gui=nocombine

