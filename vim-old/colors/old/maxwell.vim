" vim maxwell colour scheme - way too many influences to mention

"=== SET COLOUR VARIABLES =====================================================

  " GUI colours
  let s:g0 = '1a2128'   " dark dark grey
  let s:g1 = '1d242b'
  let s:g2 = '2f343f'
  let s:g3 = '3f444f'
  let s:g4 = '484E54'
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
  let s:pu = '744A9E'   " purple
  " let s:pu = '204a97'   " purple

  " let s:pi = '774477'   " pink
  let s:pi = '772266'   " pink

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
  let colors_name = 'maxwell'

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
  cal <sid>h('Cursor'           , s:g1 , s:te , s:t0 , s:t4 , 'none'      , ''  )
  cal <sid>h('StatusLine'       , s:re , s:g0 , s:t0 , s:t4 , 'none'      , ''  )
  cal <sid>h('StatusLineTerm'   , s:g1 , s:g6 , s:t0 , s:t4 , 'none'      , ''  )
  cal <sid>h('TabLineSel'       , s:g1 , s:g6 , s:t0 , s:t4 , 'none'      , ''  )
  cal <sid>h('TermCursor'       , s:g1 , s:g6 , s:t0 , s:t4 , 'none'      , ''  )

  " line numbers
  cal <sid>h('CursorLineNr'     , s:g3 , s:g1 , s:t0 , s:t3 , 'none'      , ''  )
  cal <sid>h('LineNr'           , s:g2 , s:g0 , s:t4 , s:t1 , 'none'      , ''  )

  " basic text
  cal <sid>h('Bold'             , ''   , ''   , ''   , ''   , 'bold'      , ''  )
  cal <sid>h('Directory'        , s:te , ''   , s:t5 , ''   , 'bold'      , ''  )
  cal <sid>h('Italic'           , ''   , ''   , ''   , ''   , 'italic'    , ''  )
  cal <sid>h('Normal'           , s:g5 , s:g1 , s:t5 , s:t0 , 'none'      , ''  )
  cal <sid>h('Underlined'       , s:g2 , ''   , s:t5 , ''   , 'underline' , ''  )

  " commented-out text
  cal <sid>h('Comment'          , s:g4 , ''   , s:t3 , ''   , 'italic'    , ''  )
  cal <sid>h('Conceal'          , s:g4 , ''   , s:t3 , ''   , 'none'      , ''  )
  cal <sid>h('EndOfBuffer'      , s:g4 , ''   , s:t3 , ''   , 'none'      , ''  )
  cal <sid>h('Ignore'           , s:g5 , s:g3 , s:t3 , ''   , 'none'      , ''  )
  cal <sid>h('NonText'          , s:g4 , ''   , s:t3 , ''   , 'none'      , ''  )

  " highlighted background
  cal <sid>h('ColorColumn'      , s:g2 , s:g0 , ''   , s:t1 , 'none'      , ''  )
  cal <sid>h('CursorColumn'     , ''   , s:g0 , ''   , s:t1 , 'none'      , ''  )
  cal <sid>h('CursorLine'       , ''   , s:g0 , ''   , s:t1 , 'none'      , ''  )
  cal <sid>h('QuickFixLine'     , ''   , s:g0 , ''   , s:t1 , 'none'      , ''  )
  cal <sid>h('StatusLineNC'     , s:g2 , s:g0 , s:t5 , s:t1 , 'none'      , ''  )
  cal <sid>h('StatusLineTermNC' , s:g2 , s:g0 , s:t5 , s:t1 , 'none'      , ''  )
  cal <sid>h('TabLineFill'      , ''   , s:g0 , ''   , s:t1 , 'none'      , ''  )
  cal <sid>h('TermCursorNC'     , ''   , s:g0 , ''   , s:t1 , 'none'      , ''  )

  " muted text on highlighted background
  cal <sid>h('DiffChange'       , s:g6 , s:g0 , s:t4 , s:t1 , 'none'      , ''  )
  cal <sid>h('FoldColumn'       , s:g6 , s:g0 , s:t4 , s:t1 , 'none'      , ''  )
  cal <sid>h('Folded'           , s:pi , s:g0 , s:t4 , s:t1 , 'none'      , ''  )
  cal <sid>h('SignColumn'       , s:g6 , s:g0 , s:t4 , s:t1 , 'none'      , ''  )
  cal <sid>h('TabLine'          , s:g6 , s:g0 , s:t4 , s:t1 , 'none'      , ''  )
  cal <sid>h('VisualNOS'        , s:g6 , s:g0 , s:t4 , s:t1 , 'none'      , ''  )

  " strongly highlighted background
  cal <sid>h('MatchParen'       , s:g5 , s:g3 , s:t6 , s:t2 , 'none'      , ''  )
  cal <sid>h('Pmenu'            , s:g7 , s:g5 , s:t6 , s:t2 , 'none'      , ''  )
  cal <sid>h('Visual'           , s:g5 , s:g4 , s:t6 , s:t2 , 'none'      , ''  )

  " selected menu item
  cal <sid>h('PmenuSel'         , s:g1 , s:g2 , s:t0 , s:t5 , 'none'      , ''  )
  cal <sid>h('WildMenu'         , s:g1 , s:g7 , s:t0 , s:t6 , 'none'      , ''  )

  " solid lines
  cal <sid>h('PmenuSbar'        , s:g0 , s:g1 , s:t1 , s:t1 , 'none'      , ''  )
  cal <sid>h('PmenuThumb'       , s:g6 , s:g4 , s:t4 , s:t4 , 'none'      , ''  )
  cal <sid>h('VertSplit'        , s:g0 , s:g0 , s:t2 , s:t2 , 'none'      , ''  )


"=== ALERT/SYNTAX HIGHLIGHTING ================================================

  " RED for warning elements
  cal <sid>h('DiffDelete'       , s:re , s:g1 , s:t8 , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Error'            , s:re , s:g1 , s:t8 , s:t0 , 'reverse'   , ''  )
  cal <sid>h('ErrorMsg'         , s:re , s:g1 , s:t8 , s:t0 , 'none'      , ''  )
  cal <sid>h('SpellBad'         , ''   , ''   , s:t0 , s:t8 , 'undercurl' , s:re)
  cal <sid>h('TooLong'          , s:re , ''   , s:t8 , ''   , 'none'      , ''  )
  cal <sid>h('WarningMsg'       , s:re , s:g1 , s:t8 , s:t0 , 'none'      , ''  )

  " ORANGE for preliminary elements
  cal <sid>h('Define'           , s:or , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('IncSearch'        , s:or , s:g1 , s:t9 , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Include'          , s:or , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('Macro'            , s:or , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('PreCondit'        , s:or , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('PreProc'          , s:or , ''   , s:t9 , ''   , 'none'      , ''  )
  cal <sid>h('SpellCap'         , ''   , ''   , s:t0 , s:t9 , 'undercurl' , s:or)

  " YELLOW for highlighted elements
  cal <sid>h('DiffText'         , s:ye , s:g1 , s:tA , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Search'           , s:ye , s:g1 , s:tA , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Todo'             , s:ye , s:g1 , s:tA , s:t0 , 'reverse'   , ''  )

  " purple! for action elements
  cal <sid>h('Conditional'      , s:pu , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('DiffAdd'          , s:pu , s:g1 , s:tB , s:t0 , 'reverse'   , ''  )
  cal <sid>h('Exception'        , s:pu , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('Keyword'          , s:bl , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('Label'            , s:pu , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('ModeMsg'          , s:pu , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('MoreMsg'          , s:pu , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('Operator'         , s:pu , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('Question'         , s:pu , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('Repeat'           , s:pu , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('Statement'        , s:pu , ''   , s:tB , ''   , 'bold'      , ''  )
  cal <sid>h('htmlTagName'      , s:pu , ''   , s:tB , ''   , 'bold'      , ''  )

  " TEAL for object types
  cal <sid>h('SpellLocal'       , ''   , ''   , s:t0 , s:tC , 'undercurl' , s:te)
  cal <sid>h('StorageClass'     , s:te , ''   , s:tC , ''   , 'none'      , ''  )
  cal <sid>h('Structure'        , s:te , ''   , s:tC , ''   , 'none'      , ''  )
  cal <sid>h('Type'             , s:te , ''   , s:tC , ''   , 'none'      , ''  )
  cal <sid>h('Typedef'          , s:te , ''   , s:tC , ''   , 'none'      , ''  )
  cal <sid>h('VimwikiListTodo'  , s:te , ''   , s:tC , ''   , 'none'      , ''  )

  " green! for constants
  cal <sid>h('Boolean'          , s:gr , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('Character'        , s:gr , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('Constant'         , s:gr , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('Float'            , s:gr , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('Number'           , s:gr , ''   , s:tD , ''   , 'none'      , ''  )
  cal <sid>h('String'           , s:gr , ''   , s:tD , ''   , 'none'      , ''  )

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
  cal <sid>h('htmlTag'          , s:pi , ''   , s:tE , ''   , 'none'      , ''  )
  cal <sid>h('htmlEndTag'       , s:pi , ''   , s:tE , ''   , 'none'      , ''  )

  " yellow for funcs
  cal <sid>h('Identifier'       , s:ye , ''   , s:tF , ''   , 'none'      , ''  )
  cal <sid>h('Function'         , s:ye , ''   , s:tF , ''   , 'none'      , ''  )
  cal <sid>h('Title'            , s:ye , ''   , s:t9 , ''   , 'bold'      , ''  )

  let s:gr = '559933'   " green
"===  my bits  ==============================================================

  " hi PmenuSel guifg=#1e2128 guibg=#525b6e

  hi CursorLine guibg=#073642 guifg=NONE ctermbg=234 ctermfg=NONE cterm=NONE

  hi VimwikiHeader1 guifg=#ab8e38 gui=bold
  hi VimwikiHeader2 guifg=#506a50 gui=bold
  hi VimwikiHeader3 guifg=#444499 gui=bold
  hi VimwikiHeader4 guifg=#FF00FF gui=bold
  hi VimwikiHeader5 guifg=#00FFFF gui=bold
  hi VimwikiHeader6 guifg=#FFFF00 gui=bold

  hi VimwikiLink guifg=#444499 gui=underline

  autocmd InsertEnter * hi CursorLine guibg=#253500 ctermfg=NONE ctermbg=22 cterm=italic
  set guicursor=i:ver20-iCursor
  autocmd InsertLeave * hi CursorLine guibg=#073642 ctermfg=NONE ctermbg=NONE cterm=NONE

  " set guicursor+=n-v-c:blinkon999
  hi iCursor guibg=yellow ctermbg=yellow
  " hi Cursor guibg=steelblue ctermbg=red ctermfg=white

  hi StartifyPath guifg=#227722
