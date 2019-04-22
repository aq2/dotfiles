"=== SET COLOUR VARIABLES =====================================================

  " GUI colours
  let s:g0 = '1d242b'   " dark grey
  let s:g1 = '1a2128'   " all greys
  let s:g2 = '2f343f'
  let s:g3 = '3f444f'   
  let s:g4 = '484E54'
  let s:g5 = '616b75'
  let s:g6 = '8b959e'
  let s:g7 = 'dde6f0'    " white

  let s:re = '990033'   " red
  let s:or = '997700'   " orange
  let s:ye = '999900'   " yellow
  let s:gr = '559933'   " green
  let s:te = '447799'   " teal
  let s:bl = '555599'   " blue
  let s:pu = '335599'   " purple
  let s:pi = '994444'   " pink

  " terminal colours
  let s:t0 = '00'
  let s:t3 = '08'
  let s:t5 = '07'
  let s:t7 = '15'
  let s:t8 = '01'
  let s:tA = '03'
  let s:tB = '02'
  let s:tC = '06'
  let s:tD = '04'
  let s:tE = '05'
  let s:t1 = '10'
  let s:t2 = '11'
  let s:t4 = '12'
  let s:t6 = '13'
  let s:t9 = '09'
  let s:tF = '14'


"=== OTHER PREPARATION ========================================================

  " clear old theme
  hi clear
  syntax reset

  " set new theme
  set background=dark
  let colors_name = 'darq'

  " highlighting function
  fun! <sid>h(x, gf, gb, cf, cb, a, s)
    if a:gf != '' | exe 'hi ' . a:x . ' guifg=#'  . a:gf                  | endif
    if a:gb != '' | exe 'hi ' . a:x . ' guibg=#'  . a:gb                  | endif
    if a:cf != '' | exe 'hi ' . a:x . ' ctermfg=' . a:cf                  | endif
    if a:cb != '' | exe 'hi ' . a:x . ' ctermbg=' . a:cb                  | endif
    if a:a  != '' | exe 'hi ' . a:x . ' gui='     . a:a . ' cterm=' . a:a | endif
    if a:s  != '' | exe 'hi ' . a:x . ' guisp=#'  . a:s                   | endif
  endfun


"=== BASIC HIGHLIGHTING =======================================================

  " cursor + status line + selected tab
  cal <sid>h('Cursor'           , s:g0 , s:te , s:t0 , s:t4 , 'none'      , ''  )
  cal <sid>h('StatusLine'       , s:re , s:g1 , s:t0 , s:t4 , 'none'      , ''  )
  cal <sid>h('StatusLineTerm'   , s:g0 , s:g4 , s:t0 , s:t4 , 'none'      , ''  )
  cal <sid>h('TabLineSel'       , s:g0 , s:g4 , s:t0 , s:t4 , 'none'      , ''  )
  cal <sid>h('TermCursor'       , s:g0 , s:g4 , s:t0 , s:t4 , 'none'      , ''  )

  " line numbers
  cal <sid>h('CursorLineNr'     , s:g0 , s:g3 , s:t0 , s:t3 , 'none'      , ''  )
  cal <sid>h('LineNr'           , s:g3 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )

  " basic text
  cal <sid>h('Bold'             , ''   , ''   , ''   , ''   , 'bold'      , ''  )
  cal <sid>h('Directory'        , s:te , ''   , s:t5 , ''   , 'bold'      , ''  )
  cal <sid>h('Italic'           , ''   , ''   , ''   , ''   , 'italic'    , ''  )
  cal <sid>h('Normal'           , s:g5 , s:g0 , s:t5 , s:t0 , 'none'      , ''  )
  cal <sid>h('Underlined'       , s:g5 , ''   , s:t5 , ''   , 'underline' , ''  )

  " commented-out text
  cal <sid>h('Comment'          , s:g2 , ''   , s:t3 , ''   , 'italic'    , ''  )
  cal <sid>h('Conceal'          , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )
  cal <sid>h('EndOfBuffer'      , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )
  cal <sid>h('Ignore'           , s:g2 , s:g7 , s:t3 , ''   , 'none'      , ''  )
  cal <sid>h('NonText'          , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )

  " highlighted background
  cal <sid>h('ColorColumn'      , s:g5 , s:g1 , ''   , s:t1 , 'none'      , ''  )
  cal <sid>h('CursorColumn'     , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
  cal <sid>h('CursorLine'       , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
  cal <sid>h('QuickFixLine'     , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
  cal <sid>h('StatusLineNC'     , s:g5 , s:g1 , s:t5 , s:t1 , 'none'      , ''  )
  cal <sid>h('StatusLineTermNC' , s:g5 , s:g1 , s:t5 , s:t1 , 'none'      , ''  )
  cal <sid>h('TabLineFill'      , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
  cal <sid>h('TermCursorNC'     , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )

  " muted text on highlighted background
  cal <sid>h('DiffChange'       , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )
  cal <sid>h('FoldColumn'       , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )
  cal <sid>h('Folded'           , s:pu , s:g0 , s:t4 , s:t1 , 'none'      , ''  )
  cal <sid>h('SignColumn'       , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )
  cal <sid>h('TabLine'          , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )
  cal <sid>h('VisualNOS'        , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )

  " strongly highlighted background
  cal <sid>h('MatchParen'       , s:g6 , s:g2 , s:t6 , s:t2 , 'none'      , ''  )
  cal <sid>h('Pmenu'            , s:g6 , s:g2 , s:t6 , s:t2 , 'none'      , ''  )
  cal <sid>h('Visual'           , s:g6 , s:g2 , s:t6 , s:t2 , 'none'      , ''  )

  " selected menu item
  cal <sid>h('PmenuSel'         , s:g0 , s:g5 , s:t0 , s:t5 , 'none'      , ''  )
  cal <sid>h('WildMenu'         , s:g0 , s:g6 , s:t0 , s:t6 , 'none'      , ''  )

  " solid lines
  cal <sid>h('PmenuSbar'        , s:g1 , s:g1 , s:t1 , s:t1 , 'none'      , ''  )
  cal <sid>h('PmenuThumb'       , s:g4 , s:g4 , s:t4 , s:t4 , 'none'      , ''  )
  cal <sid>h('VertSplit'        , s:g2 , s:g2 , s:t2 , s:t2 , 'none'      , ''  )


"=== ALERT/SYNTAX HIGHLIGHTING ================================================

  " RED for warning elements
  cal <sid>h('DiffDelete'       , s:re , s:g0 , s:t8 , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Error'            , s:re , s:g0 , s:t8 , s:t0 , 'reverse'   , ''  )
  cal <sid>h('ErrorMsg'         , s:re , s:g0 , s:t8 , s:t0 , 'none'      , ''  )
  cal <sid>h('SpellBad'         , ''   , ''   , s:t0 , s:t8 , 'undercurl' , s:re)
  cal <sid>h('TooLong'          , s:re , ''   , s:t8 , ''   , 'none'      , ''  )
  cal <sid>h('WarningMsg'       , s:re , s:g0 , s:t8 , s:t0 , 'none'      , ''  )

  " ORANGE for preliminary elements
  cal <sid>h('Define'           , s:or , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('IncSearch'        , s:or , s:g0 , s:t9 , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Include'          , s:or , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('Macro'            , s:or , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('PreCondit'        , s:or , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('PreProc'          , s:or , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('SpellCap'         , ''   , ''   , s:t0 , s:t9 , 'undercurl' , s:or)
  cal <sid>h('Title'            , s:or , ''   , s:t9 , ''   , 'none'      , ''  )

  " YELLOW for highlighted elements
  cal <sid>h('DiffText'         , s:ye , s:g0 , s:tA , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Search'           , s:ye , s:g0 , s:tA , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Todo'             , s:ye , s:g0 , s:tA , s:t0 , 'reverse'   , ''  )

  " BLU for action elements
  cal <sid>h('conditional'      , s:bl , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('DiffAdd'          , s:bl , s:g0 , s:tB , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Exception'        , s:bl , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('Keyword'          , s:bl , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('Label'            , s:re , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('ModeMsg'          , s:bl , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('MoreMsg'          , s:bl , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('Operator'         , s:bl , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('Question'         , s:bl , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('Repeat'           , s:bl , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('Statement'        , s:bl , ''   , s:tB , ''   , 'bold'      , ''  )

  " TEAL for object types
  cal <sid>h('SpellLocal'       , ''   , ''   , s:t0 , s:tC , 'undercurl' , s:te)
  cal <sid>h('StorageClass'     , s:te , ''   , s:tC , ''   , 'none'      , ''  )
  cal <sid>h('Structure'        , s:te , ''   , s:tC , ''   , 'none'      , ''  )
  cal <sid>h('Type'             , s:te , ''   , s:tC , ''   , 'none'      , ''  )
  cal <sid>h('Typedef'          , s:te , ''   , s:tC , ''   , 'none'      , ''  )

  " BLUE for constants
  cal <sid>h('Boolean'          , s:g6 , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('Character'        , s:g6 , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('Constant'         , s:g6 , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('Float'            , s:g6 , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('Number'           , s:g6 , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('String'           , s:g6 , ''   , s:tD , ''   , 'none'      , ''  )

  " PURPLE for special text
  cal <sid>h('Debug'            , s:pu , ''   , s:tE , ''   , 'none'      , ''  )
  cal <sid>h('Delimiter'        , s:pu , ''   , s:tE , ''   , 'none'      , ''  )
  cal <sid>h('Special'          , s:pu , ''   , s:tE , ''   , 'none'      , ''  )
  cal <sid>h('SpecialChar'      , s:pu , ''   , s:tE , ''   , 'none'      , ''  )
  cal <sid>h('SpecialComment'   , s:pu , ''   , s:tE , ''   , 'none'      , ''  )
  cal <sid>h('SpecialKey'       , s:pu , ''   , s:tE , ''   , 'none'      , ''  )
  cal <sid>h('SpellRare'        , ''   , ''   , s:t0 , s:tE , 'undercurl' , s:pu)
  cal <sid>h('Tag'              , s:pu , ''   , s:tE , ''   , 'none'      , ''  )

  " PINK for object names
  cal <sid>h('Function'         , s:te , ''   , s:tF , ''   , 'none'      , ''  )
  cal <sid>h('Identifier'       , s:pi , ''   , s:tF , ''   , 'none'      , ''  )


"=== OPTIONS ==================================================================

  hi Pmenu guibg=#1e2128 guifg=#525b6e
  hi PmenuSel guifg=#1e2128 guibg=#525b6e

  hi VertSplit guifg=#1a2128 guibg=#1a2128
  hi CursorLine guibg=#073642 guifg=NONE ctermbg=234 ctermfg=NONE cterm=NONE

  hi VimwikiHeader1 guifg=#ab8e38
  hi VimwikiHeader2 guifg=#508a50
  hi VimwikiHeader3 guifg=#444499
  hi VimwikiHeader4 guifg=#FF00FF
  hi VimwikiHeader5 guifg=#00FFFF
  hi VimwikiHeader6 guifg=#FFFF00
  hi VimwikiLink guifg=#444499 gui=underline

  autocmd InsertEnter * hi CursorLine guibg=#404000 ctermfg=NONE ctermbg=22 cterm=italic
  autocmd InsertLeave * hi CursorLine guibg=#073642 ctermfg=NONE ctermbg=NONE cterm=NONE

  set guicursor=i:ver20-iCursor
  set guicursor+=n-v-c:blinkon999
  hi iCursor guibg=yellow ctermbg=yellow
  " hi Cursor guibg=steelblue ctermbg=red ctermfg=white

