" =============================================================================
" File:        dao.vim
" Description: Vim color scheme file
" Maintainer:  11111000000 (Petr)
" =============================================================================
highlight clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "dao"

if &background == "light"
  hi Normal       guifg=#131313          guibg=#eeeeee   gui=NONE

  hi Cursor       guifg=bg               guibg=#212121   gui=NONE
  hi CursorIM     guifg=bg               guibg=fg        gui=NONE
  hi lCursor      guifg=bg               guibg=fg        gui=NONE
  hi CursorLine   guifg=NONE             guibg=#e0e0e0   gui=NONE
  hi CursorColumn guifg=NONE             guibg=#e7e7e7   gui=NONE
  hi LineNr       guifg=#777777          guibg=#dddddd   gui=NONE
  hi CursorLineNr guifg=#333333          guibg=#bbbbbb   gui=NONE

  hi Function     guifg=#222222          guibg=NONE      gui=bold
  hi String       guifg=#555555          guibg=NONE      gui=italic
  hi Type         guifg=#333333          guibg=NONE      gui=bold
  hi Statement    guifg=#555555          guibg=NONE      gui=bold
  hi Conditional  guifg=#666666          guibg=NONE      gui=bold
  hi Todo         guifg=#eeeeee          guibg=#323232   gui=bold
  hi Comment      guifg=#555555          guibg=NONE      gui=italic
  hi Special      guifg=#a0a0a0          guibg=NONE      gui=bold
  hi Identifier   guifg=#222222          guibg=NONE      gui=NONE
  hi Keyword      guifg=#555555          guibg=NONE      gui=bold
  hi Label        guifg=#444444          guibg=NONE      gui=underline
  hi Boolean      guifg=#888888          guibg=NONE      gui=bold
  hi PreProc      guifg=#6b6b6b          guibg=NONE      gui=bold
  hi Include      guifg=#565656          guibg=NONE      gui=bold
  hi Constant     guifg=#555555          guibg=NONE      gui=bold
  hi Delimiter    guifg=#222222          guibg=NONE      gui=NONE

  hi Directory    guifg=#929292          guibg=bg        gui=NONE
  hi ErrorMsg     guifg=#6f6f6f          guibg=NONE      gui=NONE
  hi FoldColumn   guifg=#555555          guibg=#414141   gui=bold
  hi Folded       guifg=#828282          guibg=#252525   gui=italic
  hi IncSearch    guifg=#000000          guibg=#aaaaaa   gui=NONE
  hi Search       guifg=#000000          guibg=#aaaaaa   gui=NONE
  hi MatchParen   guifg=#000000          guibg=#aaaaaa   gui=bold
  hi ModeMsg      guifg=#000000          guibg=#767676   gui=bold
  hi MoreMsg      guifg=#7c7c7c          guibg=bg        gui=bold
  hi NonText      guifg=#7e7e7e          guibg=bg        gui=bold
  hi Question     guifg=#454545          guibg=bg        gui=bold
  hi SignColumn   guifg=#000000          guibg=#696969   gui=NONE
  hi SpecialKey   guifg=#000000          guibg=#696969   gui=NONE

  hi Visual       guifg=#000000          guibg=#515151   gui=NONE
  hi VisualNOS    guifg=#888888          guibg=#515151   gui=none

  hi Title        guifg=#777777          guibg=NONE        gui=bold
  hi VertSplit    guifg=bg               guibg=bg

  hi Pmenu        guifg=#656565          guibg=#3f3f3f   gui=NONE
  hi PmenuSel     guifg=#000000          guibg=#a9a9aa   gui=bold
  hi PmenuSbar    guifg=fg               guibg=#5d5d5d   gui=NONE
  hi PmenuThumb   guifg=fg               guibg=#777777   gui=NONE
  hi WildMenu     guifg=#000000          guibg=#828282   gui=NONE

  hi DiffAdd      guifg=NONE             guibg=#000000   gui=NONE
  hi DiffChange   guifg=fg               guibg=#252525   gui=NONE
  hi DiffDelete   guifg=NONE             guibg=#000      gui=NONE
  hi DiffText     guifg=NONE             guibg=#444444   gui=NONE

  hi StatusLine   guifg=#000000          guibg=#727272   gui=bold
  hi StatusLineNC guifg=#5a5959          guibg=#222222   gui=italic

  hi TabLine      guifg=#333333          guibg=#aaaaaa   gui=NONE
  hi TabLineFill  guifg=#010101          guibg=#aaaaaa   gui=NONE
  hi TabLineSel   guifg=#111111          guibg=bg        gui=bold

  hi SpellBad     guisp=#000000          guibg=#ffffff   gui=undercurl    guisp=#000000
  hi SpellCap     guisp=#5d5d5d                          gui=undercurl
  hi SpellLocal   guisp=#434343                          gui=undercurl
  hi SpellRare    guisp=#7d7d7d                          gui=undercurl

  hi WarningMsg   guifg=#cfcfcf          guibg=#5b5b5b   gui=NONE
  hi Ignore       guifg=bg               guibg=NONE      gui=NONE
  hi Error        guifg=#000000          guibg=NONE      gui=undercurl guisp=#000000
  hi VimError     guifg=#b6b6b6          guibg=#313131   gui=bold
  hi VimCommentTitle  guifg=#5c5c5c      guibg=bg        gui=bold,italic

  "hi cssBraces        guifg=fg            guibg=bg              gui=NONE
  "hi javaScript       guifg=fg            guibg=NONE
  "hi lsRegex          guifg=#888   guibg=NONE   gui=underline
else 
  hi Normal       guifg=#eeeeee          guibg=#101010   gui=NONE

  hi Cursor       guifg=bg               guibg=#e9e9e9   gui=NONE
  hi CursorIM     guifg=bg               guibg=fg        gui=NONE
  hi lCursor      guifg=bg               guibg=fg        gui=NONE
  hi CursorLine   guifg=NONE             guibg=#0f0f0f   gui=NONE
  hi CursorColumn guifg=NONE             guibg=#0f0f0f   gui=NONE
  hi LineNr       guifg=#010101          guibg=#212121   gui=NONE
  hi CursorLineNr guifg=#777777          guibg=#1b1b1b   gui=NONE

  hi Function     guifg=#eeeeee          guibg=NONE      gui=bold
  hi String       guifg=#999999          guibg=NONE      gui=italic
  hi Type         guifg=#cccccc          guibg=NONE      gui=bold
  hi Statement    guifg=#eaeaea          guibg=NONE      gui=bold
  hi Conditional  guifg=#efefef          guibg=NONE      gui=bold
  hi Todo         guifg=#eeeeee          guibg=#323232   gui=bold
  hi Comment      guifg=#555555          guibg=NONE      gui=italic
  hi Special      guifg=#a0a0a0          guibg=NONE      gui=bold
  hi Identifier   guifg=#dddddd          guibg=NONE      gui=NONE
  hi Keyword      guifg=#eaeaea          guibg=NONE      gui=bold
  hi Label        guifg=#a5a5a5          guibg=NONE      gui=underline
  hi Boolean      guifg=#616060          guibg=NONE      gui=bold
  hi PreProc      guifg=#6b6b6b          guibg=NONE      gui=bold
  hi Include      guifg=#565656          guibg=NONE      gui=bold
  hi Constant     guifg=#aaaaaa          guibg=NONE      gui=bold
  hi Delimiter    guifg=#eeeeee          guibg=NONE      gui=NONE

  hi Directory    guifg=#929292          guibg=bg        gui=NONE
  hi ErrorMsg     guifg=#6f6f6f          guibg=NONE      gui=NONE
  hi FoldColumn   guifg=#555555          guibg=#414141   gui=bold
  hi Folded       guifg=#828282          guibg=#252525   gui=italic
  hi IncSearch    guifg=#000000          guibg=#aaaaaa   gui=NONE
  hi Search       guifg=#000000          guibg=#aaaaaa   gui=NONE
  hi MatchParen   guifg=#000000          guibg=#aaaaaa   gui=bold
  hi ModeMsg      guifg=#ffffff          guibg=#767676   gui=bold
  hi MoreMsg      guifg=#7c7c7c          guibg=bg        gui=bold
  hi NonText      guifg=#7e7e7e          guibg=bg        gui=bold
  hi Question     guifg=#454545          guibg=bg        gui=bold
  hi SignColumn   guifg=#ffffff          guibg=#696969   gui=NONE
  hi SpecialKey   guifg=#ffffff          guibg=#696969   gui=NONE

  hi Visual       guifg=#ffffff          guibg=#515151   gui=NONE
  hi VisualNOS    guifg=#cccccc          guibg=#515151   gui=none

  hi Title        guifg=#777777          guibg=NONE        gui=bold
  hi VertSplit    guifg=bg               guibg=bg

  hi Pmenu        guifg=#656565          guibg=#3f3f3f   gui=NONE
  hi PmenuSel     guifg=#000000          guibg=#a9a9aa   gui=bold
  hi PmenuSbar    guifg=fg               guibg=#5d5d5d   gui=NONE
  hi PmenuThumb   guifg=fg               guibg=#777777   gui=NONE
  hi WildMenu     guifg=#000000          guibg=#828282   gui=NONE

  hi DiffAdd      guifg=NONE             guibg=#000000   gui=NONE
  hi DiffChange   guifg=fg               guibg=#252525   gui=NONE
  hi DiffDelete   guifg=NONE             guibg=#000      gui=NONE
  hi DiffText     guifg=NONE             guibg=#444444   gui=NONE

  hi StatusLine   guifg=#000000          guibg=#727272   gui=bold
  hi StatusLineNC guifg=#5a5959          guibg=#222222   gui=italic

  hi TabLine      guifg=#999999          guibg=#212121   gui=NONE
  hi TabLineFill  guifg=#010101          guibg=#212121   gui=NONE
  hi TabLineSel   guifg=#999999          guibg=bg        gui=bold

  hi SpellBad     guisp=#ffffff          guibg=#000000   gui=undercurl    guisp=#ffffff
  hi SpellCap     guisp=#5d5d5d                          gui=undercurl
  hi SpellLocal   guisp=#434343                          gui=undercurl
  hi SpellRare    guisp=#7d7d7d                          gui=undercurl

  hi WarningMsg   guifg=#cfcfcf          guibg=#5b5b5b   gui=NONE
  hi Ignore       guifg=bg               guibg=NONE      gui=NONE
  hi Error        guifg=#ffffff          guibg=NONE      gui=undercurl guisp=#ffffff
  hi VimError     guifg=#b6b6b6          guibg=#313131   gui=bold
  hi VimCommentTitle  guifg=#5c5c5c      guibg=bg        gui=bold,italic

  "hi cssBraces        guifg=fg            guibg=bg              gui=NONE
  "hi javaScript       guifg=fg            guibg=NONE
  "hi lsRegex          guifg=#888   guibg=NONE   gui=underline
endif
