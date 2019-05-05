" seagrey-aq, a vim colourscheme inspired by nightsense and base-16


"=== SET COLOUR VARIABLES =====================================================

  " GUI colours
  let s:g0 = '1d242b'   " dark grey
  let s:g1 = '1a2128'   " all greys
  let s:g2 = '616b75'
  let s:g3 = '484E54'
  let s:g4 = '8b959e'
  let s:g5 = '2f343f'
  let s:g6 = 'dde6f0'
  let s:g7 = '2f343f'   " white
  let s:g8 = '994444'   " red
  let s:g9 = '7E382F'   " orange
  let s:gA = '774477'   " yellow
  let s:gB = '336633'   " green
  let s:gC = '447799'   " teal
  let s:gD = '555599'   " blue
  let s:gE = '204a87'   " purple
  let s:gF = '774477'   " pink

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
  let colors_name = 'seagr-aq'

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
  cal <sid>h('Cursor'           , s:g0 , s:gC , s:t0 , s:t4 , 'none'      , ''  )
  cal <sid>h('StatusLine'       , s:g8 , s:g1 , s:t0 , s:t4 , 'none'      , ''  )
  cal <sid>h('StatusLineTerm'   , s:g0 , s:g4 , s:t0 , s:t4 , 'none'      , ''  )
  cal <sid>h('TabLineSel'       , s:g0 , s:g4 , s:t0 , s:t4 , 'none'      , ''  )
  cal <sid>h('TermCursor'       , s:g0 , s:g4 , s:t0 , s:t4 , 'none'      , ''  )

  " line numbers
  cal <sid>h('CursorLineNr'     , s:g0 , s:g3 , s:t0 , s:t3 , 'none'      , ''  )
  cal <sid>h('LineNr'           , s:g3 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )

  " basic text
  cal <sid>h('Bold'             , ''   , ''   , ''   , ''   , 'bold'      , ''  )
  cal <sid>h('Directory'        , s:gC , ''   , s:t5 , ''   , 'bold'      , ''  )
  cal <sid>h('Italic'           , ''   , ''   , ''   , ''   , 'italic'    , ''  )
  cal <sid>h('Normal'           , s:g2 , s:g0 , s:t5 , s:t0 , 'none'      , ''  )
  cal <sid>h('Underlined'       , s:g5 , ''   , s:t5 , ''   , 'underline' , ''  )

  " commented-out text
  cal <sid>h('Comment'          , s:g2 , ''   , s:t3 , ''   , 'italic'      , ''  )
  cal <sid>h('Conceal'          , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )
  cal <sid>h('EndOfBuffer'      , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )
  cal <sid>h('Ignore'           , s:g2, s:g7   , s:t3 , ''   , 'none'      , ''  )
  cal <sid>h('NonText'          , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )

  " highlighted background
  cal <sid>h('ColorColumn'      , s:g5   , s:g1 , ''   , s:t1 , 'none'      , ''  )
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
  cal <sid>h('Folded'           , s:gE , s:g0, s:t4 , s:t1 , 'none'      , ''  )
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
  cal <sid>h('DiffDelete'       , s:g8 , s:g0 , s:t8 , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Error'            , s:g8 , s:g0 , s:t8 , s:t0 , 'reverse'   , ''  )
  cal <sid>h('ErrorMsg'         , s:g8 , s:g0 , s:t8 , s:t0 , 'none'      , ''  )
  cal <sid>h('SpellBad'         , ''   , ''   , s:t0 , s:t8 , 'undercurl' , s:g8)
  cal <sid>h('TooLong'          , s:g8 , ''   , s:t8 , ''   , 'none'      , ''  )
  cal <sid>h('WarningMsg'       , s:g8 , s:g0 , s:t8 , s:t0 , 'none'      , ''  )

  " ORANGE for preliminary elements
  cal <sid>h('Define'           , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('IncSearch'        , s:g9 , s:g0 , s:t9 , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Include'          , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('Macro'            , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('PreCondit'        , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('PreProc'          , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('SpellCap'         , ''   , ''   , s:t0 , s:t9 , 'undercurl' , s:g9)
  cal <sid>h('Title'            , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )

  " YELLOW for highlighted elements
  cal <sid>h('DiffText'         , s:gA , s:g0 , s:tA , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Search'           , s:gA , s:g0 , s:tA , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Todo'             , s:gA , s:g0 , s:tA , s:t0 , 'reverse'   , ''  )

  " GREEN for action elements
  cal <sid>h('Conditional'      , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
  cal <sid>h('DiffAdd'          , s:gB , s:g0 , s:tB , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Exception'        , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
  cal <sid>h('Keyword'          , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
  cal <sid>h('Label'            , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
  cal <sid>h('ModeMsg'          , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
  cal <sid>h('MoreMsg'          , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
  cal <sid>h('Operator'         , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
  cal <sid>h('Question'         , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
  cal <sid>h('Repeat'           , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
  cal <sid>h('Statement'        , s:gB , ''   , s:tB , ''   , 'none'      , ''  )

  " TEAL for object types
  cal <sid>h('SpellLocal'       , ''   , ''   , s:t0 , s:tC , 'undercurl' , s:gC)
  cal <sid>h('StorageClass'     , s:gC , ''   , s:tC , ''   , 'none'      , ''  )
  cal <sid>h('Structure'        , s:gC , ''   , s:tC , ''   , 'none'      , ''  )
  cal <sid>h('Type'             , s:gC , ''   , s:tC , ''   , 'none'      , ''  )
  cal <sid>h('Typedef'          , s:gC , ''   , s:tC , ''   , 'none'      , ''  )

  " BLUE for constants
  cal <sid>h('Boolean'          , s:gD , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('Character'        , s:gD , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('Constant'         , s:gD , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('Float'            , s:gD , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('Number'           , s:gD , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('String'           , s:gD , ''   , s:tD , ''   , 'none'      , ''  )

  " PURPLE for special text
  cal <sid>h('Debug'            , s:gE , ''   , s:tE , ''   , 'none'      , ''  )
  cal <sid>h('Delimiter'        , s:gE , ''   , s:tE , ''   , 'none'      , ''  )
  cal <sid>h('Special'          , s:gE , ''   , s:tE , ''   , 'none'      , ''  )
  cal <sid>h('SpecialChar'      , s:gE , ''   , s:tE , ''   , 'none'      , ''  )
  cal <sid>h('SpecialComment'   , s:gE , ''   , s:tE , ''   , 'none'      , ''  )
  cal <sid>h('SpecialKey'       , s:gE , ''   , s:tE , ''   , 'none'      , ''  )
  cal <sid>h('SpellRare'        , ''   , ''   , s:t0 , s:tE , 'undercurl' , s:gE)
  cal <sid>h('Tag'              , s:gE , ''   , s:tE , ''   , 'none'      , ''  )

  " PINK for object names
  cal <sid>h('Function'         , s:gF , ''   , s:tF , ''   , 'none'      , ''  )
  cal <sid>h('Identifier'       , s:gF , ''   , s:tF , ''   , 'none'      , ''  )


"=== OPTIONS ==================================================================

  " disable highlighted CursorLineNr
  if exists('g:seagrey_dark_CursorLineNr')
    if g:seagrey_dark_CursorLineNr == 'off'
      cal <sid>h('CursorLineNr'     , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )
    endif
  endif

  " disable LineNr background altogether
  if exists('g:seagrey_dark_LineNr')
    if g:seagrey_dark_LineNr == 'off'
      cal <sid>h('CursorLineNr'     , s:g4 , s:g0 , s:t4 , s:t0 , 'none'      , ''  )
      cal <sid>h('LineNr'           , s:g4 , s:g0 , s:t4 , s:t0 , 'none'      , ''  )
    endif
  endif


  hi Pmenu guibg=#1e2128 guifg=#525b6e
  hi PmenuSel guifg=#1e2128 guibg=#525b6e

  hi VertSplit guifg=#1a2128 guibg=#1a2128
  hi CursorLine guibg=#073642 guifg=NONE ctermbg=234 ctermfg=NONE cterm=NONE

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

