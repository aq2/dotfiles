hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "angelo-dark"


hi Comment guifg=#1d242b
hi Comment guifg=#1a2128
hi Comment guifg=#2f343f
hi Comment guifg=#2f343f
hi Comment guifg=#484E54
hi Comment guifg=#616b75
hi Comment guifg=#8b959e
hi Comment guifg=#dde6f0

hi Comment guifg=#204a87
hi Comment guifg=#336633
hi Comment guifg=#447799
hi Comment guifg=#555599
hi Comment guifg=#774477
hi Comment guifg=#774477
hi Comment guifg=#7E382F
hi Comment guifg=#994444


hi Comment guifg=#990033  red
hi Comment guifg=#999900  yellow
hi Comment guifg=#559933  green
hi Comment guifg=#555599  teal
hi Comment guifg=#553399  blue
hi Comment guifg=#335599  purple
hi Comment guifg=#994444  pink

highlight Comment         guifg=#808080
highlight Constant        guifg=#00ffff  gui=none
highlight Identifier      guifg=#00c0c0
highlight Statement       guifg=#445599  gui=bold
highlight PreProc         guifg=#a05f00
highlight Type            guifg=#00c000
highlight Special         guifg=#0000ff
highlight Error           guibg=#ff0000
highlight Todo            guifg=#000080  guibg=#c0c000
highlight Normal          guifg=#ffffff  guibg=#000000
highlight Search          guibg=#c0c000


highlight StatusLine      guifg=#ffff00  guibg=#0000ff gui=none
highlight Directory       guifg=#00c000


  hi VimwikiLinkT guifg=#444499
  hi VimwikiHeader1 guifg=#ab8e38
  hi VimwikiHeader2 guifg=#508a50
  hi VimwikiHeader3 guifg=#444499
  hi VimwikiHeader4 guifg=#FF00FF
  hi VimwikiHeader5 guifg=#00FFFF
  hi VimwikiHeader6 guifg=#FFFF00
  hi VimwikiLink guifg=#444499 gui=underline
  " hi VimwikiLink guifg=#555599 gui=underline

  autocmd InsertEnter * hi CursorLine guibg=#404000 ctermfg=NONE ctermbg=22 cterm=italic
  autocmd InsertLeave * hi CursorLine guibg=#073642 ctermfg=NONE ctermbg=NONE cterm=NONE

  set guicursor=i:ver20-iCursor
  " set guicursor+=n-v-c:blinkon999
  hi iCursor guibg=yellow ctermbg=yellow
  " hi Cursor guibg=steelblue ctermbg=red ctermfg=white
