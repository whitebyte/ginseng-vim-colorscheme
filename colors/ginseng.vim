set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "ginseng"

hi Normal           guifg=#ddd6c0   guibg=#2c2824   gui=NONE
hi NormalInactive   guifg=NONE      guibg=#222020   gui=NONE
hi NonText          guifg=#666046   guibg=bg        gui=NONE
hi Folded           guifg=#888078   guibg=#3c3434   gui=italic
hi Comment          guifg=#707070                   gui=italic
hi Boolean          guifg=#ff9800                   gui=NONE
hi String           guifg=#aaaa99                   gui=NONE
hi Identifier       guifg=#998877                   gui=NONE
hi Function         guifg=#ddcca8                   gui=NONE
hi Type             guifg=#996644                   gui=NONE
hi Statement        guifg=#909a9f                   gui=NONE
hi Keyword          guifg=#909a9f                   gui=NONE
hi Constant         guifg=#ff9800                   gui=NONE
hi Number           guifg=#cc8800                   gui=NONE
hi Special          guifg=#719611                   gui=NONE
hi PreProc          guifg=#bbaa88                   gui=NONE
hi Title            guifg=#778888                   gui=NONE
hi Todo             guifg=#8f6f8f   guibg=#202020   gui=italic,underline,bold

""" Cursor {{{4
hi Cursor           guifg=NONE      guibg=#626262   gui=NONE
hi nCursor          guifg=black     guibg=green1    gui=NONE
hi vCursor          guifg=black     guibg=magenta   gui=NONE
hi iCursor          guifg=black     guibg=#f08080   gui=NONE
hi cCursor          gui=reverse
""" }}}4
""" Cursor Line/Column {{{4
hi CursorColumn     guibg=#000000
hi CursorLine       guibg=#000000
hi CursorLineNr     guifg=#ffee99   guibg=bg        gui=none
hi ColorColumn      guibg=#383535
""" }}}4
""" Structural {{{4
hi LineNr           guifg=#807060   guibg=#000000   gui=NONE
hi SignColumn       guifg=#333344   guibg=#363636   gui=NONE
hi StatusLine       guifg=#000000   guibg=#9d9080   gui=bold
hi StatusLineNC     guifg=#000000   guibg=#48403a   gui=italic
hi VertSplit        guifg=#48403a   guibg=#48403a   gui=NONE
hi FoldColumn       guifg=#68838b   guibg=#4B4B4B   gui=bold
""" }}}4
""" Tabs {{{4
hi TabLine          guifg=#ddd6c0   guibg=#9d9080   gui=NONE
hi TabLineFill      guifg=#9d9080   guibg=#ddd6c0   gui=reverse
hi TabLineSel       guibg=#2c2824   guifg=#ddd6c0   gui=bold
""" }}}4
""" Search {{{4
hi IncSearch        guifg=#000000   guibg=#ff8800   gui=BOLD
hi Search           guifg=#000000   guibg=#ffffbb   gui=BOLD
""" }}}4
""" Selection {{{4
hi Visual           guifg=#000000   guibg=#768798   gui=NONE
""" }}}4
""" Pop-up Menus {{{4
hi Pmenu            guifg=#000000   guibg=#ccc0aa
hi PmenuSel         guifg=#000000   guibg=#ee9944
""" }}}4
""" Messaging {{{4
hi ModeMsg          guifg=#000000   guibg=#00ff00   gui=bold
hi MoreMsg          guifg=#2e8b57   guibg=bg        gui=bold
hi ErrorMsg         guifg=#ff6a6a   guibg=NONE      gui=bold
hi WarningMsg       guifg=#ee9a00   guibg=bg        gui=NONE
""" }}}4
""" Spelling {{{4
hi SpellBad         guisp=#ee2c2c   gui=undercurl
hi SpellCap         guisp=#0000ff   gui=undercurl
hi SpellLocal       guisp=#008b8b   gui=undercurl
hi SpellRare        guisp=#ff00ff   gui=undercurl
""" }}}4

""" Diff {{{4
hi DiffAdd          guibg=#374229   gui=NONE
hi DiffDelete       guibg=#7a0400   guifg=#7a0400 gui=NONE
hi DiffChange       guibg=#663300   gui=NONE
hi DiffText         guibg=#aa6600   guifg=#f0af00 gui=NONE

hi diffAdded        guibg=#374229   gui=NONE
hi diffRemoved      guibg=#521800   gui=NONE
" hi DiffChange       guibg=#092255   gui=NONE
""" }}}4

""" Other {{{4
hi Directory        guifg=#ddaa66   guibg=bg        gui=NONE
hi MatchParen       guifg=#fff000   guibg=bg        gui=bold
hi SpecialKey       guifg=#cc6644   guibg=bg        gui=bold
hi WildMenu         guifg=#000000   guibg=#87ceeb   gui=NONE

""" Intent guides
hi IndentBlanklineChar                  guifg=#444444       gui=nocombine
hi IndentBlanklineSpaceChar             guifg=#444444       gui=nocombine
hi IndentBlanklineSpaceCharBlankline    guifg=#444444       gui=nocombine
hi IndentBlanklineContextChar           guifg=#87ceeb       gui=nocombine


""" LSP
hi LspDiagnosticsUnderlineError guifg=#ee2c2c gui=undercurl
hi LspDiagnosticsUnderlineWarning guifg=#ee9a00 gui=undercurl
" TODO
" LspDiagnosticsUnderlineInformation
" LspDiagnosticsUnderlineHint

""" TreeSitter
hi link TSCurrentScope NormalInactive
