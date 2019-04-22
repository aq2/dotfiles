  " GUI colours
  let s:g0 = '282118'   " dark dark grey
  let s:g1 = '2b241a'   
  " let s:g1 = '1d242b'
  let s:g2 = '2f343f'
  let s:g3 = '3f444f'
  let s:g4 = '4d412f'
  let s:g5 = '616b75'
  let s:g6 = '8b959e'
  let s:g7 = 'dde6f0'   " white

  let s:re = '994444'   " red
  let s:or = '7E382F'   " orange
  let s:ye = '777744'   " yellow
  let s:gr = '208653'   " green
  " let s:gr = '007744'   " green
  let s:te = '447799'   " teal
  let s:bl = '455599'   " blue
  " let s:pu = '744A9E'   " purple
  let s:pu = '204a97'   " purple

  " let s:pi = '774477'   " pink
  let s:pi = '772266'   " pink


"=== BASIC HIGHLIGHTING =======================================================

  hi Bold     guifg=#705e44 guibg=#2b241a gui=bold
  hi Italic   guifg=#705e44 guibg=#2b241a gui=italic
  hi! link htmlTagName  Keyword  
  hi! link Question     Keyword 
  hi! link MoreMsg      Keyword 

  QuickFixLine
  FoldColumn'       
  SignColumn'       
  TabLine'          
  VisualNOS'        
  Visual'           
  WildMenu'         
  PmenuSbar'        
  PmenuThumb'       
  SpellBad'         
  TooLong'          
  SpellLocal'       
  Structure'        
  Typedef'          
  VimwikiListTodo'  
  Debug'            
  Delimiter'        
  SpecialChar'      
  SpecialComment'   
  SpellRare'        
  htmlTag'          
  htmlEndTag'       

  let s:gr = '559933'   " green


  hi CursorLine guibg=#073642 guifg=NONE ctermbg=234 ctermfg=NONE cterm=NONE

  " hi VimwikiHeader1 guifg=#ab8e38 gui=bold
  hi VimwikiHeader2 guifg=#506a50 gui=bold
  hi VimwikiHeader3 guifg=#444499 gui=bold
  hi VimwikiHeader4 guifg=#FF00FF gui=bold
  hi VimwikiHeader5 guifg=#00FFFF gui=bold
  hi VimwikiHeader6 guifg=#FFFF00 gui=bold

  hi VimwikiLink guifg=#444499 gui=underline

  autocmd InsertEnter * hi CursorLine guibg=#204000
  " autocmd InsertEnter * hi CursorLine guibg=#253500 ctermfg=NONE ctermbg=22 cterm=italic
  set guicursor=i:ver20-iCursor
  autocmd InsertLeave * hi CursorLine guibg=#073642 ctermfg=NONE ctermbg=NONE cterm=NONE
  hi iCursor guibg=yellow ctermbg=yellow

  " set guicursor+=n-v-c:blinkon999
  " hi Cursor guibg=steelblue ctermbg=red ctermfg=white

  hi StartifyPath guifg=#227722
