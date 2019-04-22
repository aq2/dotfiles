" vim maxwell colour scheme - way too many influences to mention

"=== SET COLOUR VARIABLES =====================================================

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



"=== OTHER PREPARATION ========================================================

  " clear old theme
  hi clear
  syntax reset

  " set new theme
  set background=dark
  let colors_name = 'max2'

  " highlighting function
  fun! <sid>h(x, gf, gb, a, s)
    if a:gf != '' | exe 'hi ' . a:x . ' guifg=#'  . a:gf | endif
    if a:gb != '' | exe 'hi ' . a:x . ' guibg=#'  . a:gb | endif
    if a:a  != '' | exe 'hi ' . a:x . ' gui='     . a:a  | endif
    if a:s  != '' | exe 'hi ' . a:x . ' guisp=#'  . a:s  | endif
  endfun


"=== BASIC HIGHLIGHTING =======================================================

  " basic text
  hi Normal   guifg=#705e44 guibg=#2b241a
  hi Bold     guifg=#705e44 guibg=#2b241a gui=bold
  hi Italic   guifg=#705e44 guibg=#2b241a gui=italic
  hi Comment  guifg=#4d412f               gui=italic

  " Directory 
  " Underlined  'underline'
  " purple! for action elements
  hi Keyword guifg=#334499 gui=bold
  hi! link DiffAdd      Keyword   
  hi! link htmlTagName  Keyword  
  hi! link Operator     Keyword 
  hi! link Statement    Keyword  
  " red below?
  hi! link Question     Keyword 
  hi! link MoreMsg      Keyword 

  " green! for constants
  hi! Boolean guifg=#027A58
  hi! link Character  Boolean  
  hi! link Constant   Boolean   
  hi! link Float      Boolean 
  hi! link Number     Boolean 
  hi! link String     Boolean 

  " yellow for titles
  hi! Title guifg=#816c4e gui=bold
  " hi! Title guifg=#927a58 gui=bold
  " hi! Title guifg=#777744 gui=bold
  hi! link Function Title
  hi! link VimwikiHeader1 Title





  " cursor + status line + selected tab
  cal <sid>h('Cursor'           , s:g1 , s:te ,  'none'      , ''  )

  " line numbers
  cal <sid>h('CursorLineNr'     , s:g3 , s:g1 ,  'none'      , ''  )
  cal <sid>h('LineNr'           , s:g2 , s:g0 ,  'none'      , ''  )


  " highlighted background
  cal <sid>h('ColorColumn'      , s:g2 , s:g0 ,  'none'      , ''  )
  cal <sid>h('CursorColumn'     , ''   , s:g0 ,  'none'      , ''  )
  cal <sid>h('QuickFixLine'     , ''   , s:g0 ,  'none'      , ''  )

  " muted text on highlighted background
  cal <sid>h('DiffChange'       , s:g6 , s:g0 ,  'none'      , ''  )
  cal <sid>h('FoldColumn'       , s:g6 , s:g0 ,  'none'      , ''  )
  cal <sid>h('Folded'           , s:pi , s:g0 ,  'none'      , ''  )
  cal <sid>h('SignColumn'       , s:g6 , s:g0 ,  'none'      , ''  )
  cal <sid>h('TabLine'          , s:g6 , s:g0 ,  'none'      , ''  )
  cal <sid>h('VisualNOS'        , s:g6 , s:g0 ,  'none'      , ''  )

  " strongly highlighted background
  cal <sid>h('MatchParen'       , s:g5 , s:g3 ,  'none'      , ''  )
  cal <sid>h('Pmenu'            , s:g7 , s:g5 ,  'none'      , ''  )
  cal <sid>h('Visual'           , s:g5 , s:g4 ,  'none'      , ''  )

  " selected menu item
  cal <sid>h('PmenuSel'         , s:g1 , s:g2 ,  'none'      , ''  )
  cal <sid>h('WildMenu'         , s:g1 , s:g7 ,  'none'      , ''  )

  " solid lines
  cal <sid>h('PmenuSbar'        , s:g0 , s:g1 ,  'none'      , ''  )
  cal <sid>h('PmenuThumb'       , s:g6 , s:g4 ,  'none'      , ''  )
  cal <sid>h('VertSplit'        , s:g0 , s:g0 ,  'none'      , ''  )


"=== ALERT/SYNTAX HIGHLIGHTING ===================================

  " RED for warning elements
  cal <sid>h('DiffDelete'       , s:re , s:g1 ,  'reverse'   , ''  )
  cal <sid>h('Error'            , s:re , s:g1 ,  'reverse'   , ''  )
  cal <sid>h('ErrorMsg'         , s:re , s:g1 ,  'none'      , ''  )
  cal <sid>h('SpellBad'         , ''   , ''   ,  'undercurl' , s:re)
  cal <sid>h('TooLong'          , s:re , ''   ,  'none'      , ''  )
  cal <sid>h('WarningMsg'       , s:re , s:g1 ,  'none'      , ''  )


  " YELLOW for highlighted elements
  cal <sid>h('DiffText'         , s:ye , s:g1 ,  'reverse'   , ''  )
  cal <sid>h('Search'           , s:ye , s:g1 ,  'reverse'   , ''  )
  cal <sid>h('Todo'             , s:ye , s:g1 ,  'reverse'   , ''  )


  " TEAL for object types
  cal <sid>h('SpellLocal'       , ''   , ''   ,  'undercurl' , s:te)
  cal <sid>h('StorageClass'     , s:te , ''   ,  'none'      , ''  )
  cal <sid>h('Structure'        , s:te , ''   ,  'none'      , ''  )
  cal <sid>h('Type'             , s:te , ''   ,  'none'      , ''  )
  cal <sid>h('Typedef'          , s:te , ''   ,  'none'      , ''  )
  cal <sid>h('VimwikiListTodo'  , s:te , ''   ,  'none'      , ''  )

  " PURPLE for special text
  cal <sid>h('Debug'            , s:pu , ''   ,  'none'      , ''  )
  cal <sid>h('Delimiter'        , s:pu , ''   ,  'none'      , ''  )
  cal <sid>h('Special'          , s:pi , ''   ,  'none'      , ''  )
  cal <sid>h('SpecialChar'      , s:pu , ''   ,  'none'      , ''  )
  cal <sid>h('SpecialComment'   , s:pu , ''   ,  'none'      , ''  )
  cal <sid>h('SpecialKey'       , s:pu , ''   ,  'none'      , ''  )
  cal <sid>h('SpellRare'        , ''   , ''   ,  'undercurl' , s:pu)
  cal <sid>h('Tag'              , s:pu , ''   ,  'none'      , ''  )

  " PINK for object names
  cal <sid>h('htmlTag'          , s:pi , ''   ,  'none'      , ''  )
  cal <sid>h('htmlEndTag'       , s:pi , ''   ,  'none'      , ''  )
  
  " yellow for funcs
  cal <sid>h('Identifier'       , s:ye , ''   ,  'none'      , ''  )

  let s:gr = '559933'   " green
"===  my bits  ==============================================================

  " hi PmenuSel guifg=#1e2128 guibg=#525b6e

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
