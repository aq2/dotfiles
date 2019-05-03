" Vim colour scheme: gravy
" Author: angelo
" Last Change: 29-04-19

"   init
  if exists("syntax on")
    syntax reset
  endif

  set t_Co=256
  set background=dark
  hi clear
  let g:colors_name = "gravy2"

" set colour variables
  " let s:darker="#4d443e"
  " let s:dark="#514741"
  let s:darker="#2d241e"
  let s:dark="#312721"


  let s:dblue="#7f749d"
  let s:plum="#b76690"
  let s:purple='#974286'
  let s:brown= "#b09676"
  let s:orange="#f88330"
  let s:pink="#f83070"
  

  " renamedgray, gray, white, brite? 
  let s:fgd='#5a493c'
  let s:fg0="#968477"
  " let s:fg0="#9a897c"
  let s:fg="#b59784"
  let s:fg4="#c5aa9a"
  



  let s:gray="#575652"
  let s:bg2="#5a5656"
  let s:bg3="#6b6767"
  let s:bg4="#7c7979"

  let s:greenish='#3D2D20'
  let s:grayish='#392E27'


  " let s:fg0="#5c4a3e"
  " let s:brown= "#806656"
  
  " unused so far.... 
  let s:fg1="#997a68"
  let s:fg2="#a3a3a3"
  let s:fg3="#959595"
  let s:builtin="#71a46c"
  let s:func="#b680b1"
  let s:var="#c27d7b"

"   cursors
  hi CursorLine guibg=#373632 guifg=NONE cterm=none
  autocmd InsertEnter * hi CursorLine guibg=#405000 cterm=none
  autocmd InsertLeave * hi CursorLine guibg=#373632 cterm=none

  set guicursor=i:ver20-iCursor
  hi iCursor guibg=yellow ctermbg=yellow

" basic text
  exe 'hi Normal        guifg='s:fg'    guibg='s:dark 
  exe 'hi Comment       guifg='s:fg0
  exe 'hi Underlined    gui=underline'

"   keywords
  exe 'hi Keyword guifg='s:dblue' gui=bold'
  hi! link Label Keyword 
  hi! link Define Keyword 
  hi! link Repeat Keyword 
  hi! link Include Keyword 
  hi! link PreProc Keyword 
  hi! link Operator Keyword 
  hi! link Exception Keyword 
  hi! link PreCondit Keyword 
  hi! link Statement Keyword 
  hi! link Structure Keyword 
  hi! link Conditional Keyword 
  hi! link htmlTagName Keyword 
  hi! link StorageClass Keyword 


  exe 'hi NonText guifg='s:bg4' guibg='s:dark 
  exe 'hi Visual guifg='s:dark' guibg='s:orange
  exe 'hi Search guibg='s:pink
  exe 'hi IncSearch guifg='s:fg' guibg='s:dark 
  exe 'hi Special guifg='s:fg0  
  exe 'hi Type guifg='s:plum 

  " Todo (literally)


"   constants
  exe 'hi Constant guifg='s:brown  
  hi! link Float Constant
  hi! link Number Constant
  hi! link String Constant
  hi! link Boolean Constant 
  hi! link Character Constant

"   highlights
  exe 'hi Title guifg='s:fg4'  gui=bold'
  exe 'hi Function guifg='s:fg4  
  exe 'hi Identifier guifg='s:fg4'  gui=italic'
  exe 'hi Todo guibg='s:fg4'  gui=bold'

"   line numbers and ui
  exe 'hi LineNr guifg='s:fgd' guibg='s:darker 
  exe 'hi CursorLineNr guifg='s:fg0' guibg='s:dark 
  exe 'hi VertSplit guifg='s:dark' guibg='s:darker
  exe 'hi Folded guifg='s:plum' guibg='s:darker 
  exe 'hi FoldColumn guifg='s:plum' guibg='s:darker 
  exe 'hi SignColumn guifg='s:plum' guibg='s:darker 

"  vimwiki
  exe 'hi VimwikiLink guifg='s:dblue' gui=bold'
  exe 'hi VimwikiHeader1 guifg='s:orange' gui=bold'
  exe 'hi VimwikiHeader2 guifg='s:pink' gui=bold'
  exe 'hi VimwikiHeader3 guifg='s:fg4' gui=bold'
  exe 'hi VimwikiHeader4 guifg='s:brown' gui=bold'
  exe 'hi VimwikiHeader5 guifg='s:purple' gui=bold'
  exe 'hi VimwikiHeader6 guifg='s:plum' gui=bold'

" sorta
  exe 'hi ErrorMsg guifg='s:darker' guibg='s:pink' gui=bold'
  exe 'hi Error guifg='s:darker' guibg='s:pink' gui=bold'
  exe 'hi Question guifg='s:orange' guibg='s:dark' gui=bold'
  exe 'hi WarningMsg guifg='s:orange' guibg='s:darker 
  exe 'hi MoreMsg guifg='s:orange  
  exe 'hi MatchParen guifg='s:darker' guibg='s:fg0
  exe 'hi Pmenu guifg='s:fg' guibg='s:bg2
  exe 'hi PmenuSel  guibg='s:bg3 
  exe 'hi WildMenu  guifg='s:dark' guibg='s:orange  
  exe 'hi Directory guifg='s:brown  

  exe 'hi DiffAdd guibg='s:grayish
  exe 'hi DiffDelete guibg=#500000'  
  exe 'hi DiffChange  guibg='s:greenish
  exe 'hi DiffText guifg=#000000 guibg=#ddddff gui=bold'

" dunno really
  exe 'hi Tag guifg='s:dblue  
  " exe 'hi CursorColumn  guibg='s:bg2 
  " exe 'hi ColorColumn  guibg='s:bg2 

" language specific
  " Python Highlighting
  exe 'hi pythonBuiltinFunc guifg='s:builtin

  " Javascript Highlighting
  exe 'hi jsBuiltins guifg='s:builtin
  exe 'hi jsFunction guifg='s:dblue' gui=bold'
  exe 'hi jsGlobalObjects guifg='s:plum
  exe 'hi jsAssignmentExps guifg='s:var

  " Html Highlighting
  exe 'hi htmlLink guifg='s:fg' gui=underline'
  exe 'hi htmlStatement guifg='s:dblue
  exe 'hi htmlSpecialTagName guifg='s:dblue

  " Markdown Highlighting
  exe 'hi mkdCode guifg='s:builtin

" ch ch ch changes  
  exe 'hi ChangesSignTextAdd guifg='s:brown' guibg='s:darker
  exe 'hi ChangesSignTextDel guifg='s:orange' guibg='s:darker
  exe 'hi ChangesSignTextCh guifg='s:pink' guibg='s:darker

"  markology
  exe 'hi MarkologyHLLine guifg='s:fg' guibg='s:purple
  exe 'hi MarkologyHLl guifg='s:plum' guibg='s:darker
  exe 'hi MarkologyHLo guifg='s:fgd' guibg='s:darker

  "   MarkologyHLl  : This group is used to highlight all the lowercase marks.
  "   MarkologyHLu  : This group is used to highlight all the uppercase marks.
  "   MarkologyHLo  : This group is used to highlight all other marks.
  "   MarkologyHLm  : This group is used when multiple marks are on the same line.
  "   MarkologyHLLine : This group is used to highlight lines if line-highlighting is selected.
