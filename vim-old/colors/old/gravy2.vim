" Vim colour scheme: gravy
" Author: angelo

"   init
  syntax reset
  set t_Co=256
  set background=dark
  hi clear
  let g:colors_name = "gravy2"

" set colour variables
  let s:grape='#772266'
  let s:eggplant='#974286'
  let s:purple="#7f749d"
  let s:plum="#b76690"
  let s:brown= "#b09676"
  let s:orange="#c8764a"
  let s:pink="#f83070"

  let s:darker="#2d241e"
  let s:dark="#312721"
  let s:dgray='#5a493c'
  let s:gray="#968477"
  let s:white="#b59784"
  let s:brite="#c5aa9a"

  let s:greenish='#2d3d20'
  let s:grayish='#392e27'
  

"   cursors
  set guicursor=i:ver20-iCursor
  hi iCursor guibg=yellow ctermbg=yellow
  hi CursorLine guibg=#373632 guifg=NONE cterm=none
  autocmd InsertEnter * hi CursorLine guibg=#405000 cterm=none
  autocmd InsertLeave * hi CursorLine guibg=#373632 cterm=none

" basic text
  exe 'hi Normal guifg='s:white' guibg='s:dark 
  exe 'hi Comment guifg='s:gray
  exe 'hi Underlined gui=underline'

" some sort of pigeon hole  
  exe 'hi Constant guifg='s:brown  
  exe 'hi Type guifg='s:plum 
  exe 'hi PreProc guifg='s:plum 
  exe 'hi Tag guifg='s:purple  
  exe 'hi Special guifg='s:dgray  
  exe 'hi NonText guifg='s:dgray' guibg='s:dark 

"   keywords
  exe 'hi Statement guifg='s:purple' gui=bold'
  hi! link Operator Statement 

"  erm  
  exe 'hi Search guibg='s:orange
  exe 'hi IncSearch guifg='s:white' guibg='s:dark 
  exe 'hi Visual guifg='s:dark' guibg='s:orange

" need TODO  
  " spelling stuff
  " pigeonholers?
  " do i need a signs column?

"   highlights
  exe 'hi Title guifg='s:brite'  gui=bold'
  exe 'hi Function guifg='s:brite  
  exe 'hi Identifier guifg='s:brite'  gui=italic'
  exe 'hi Todo guifg='s:dark' guibg='s:brown' gui=bold'

"   line numbers and ui
  exe 'hi LineNr guifg='s:dgray' guibg='s:darker 
  exe 'hi Folded guifg='s:plum' guibg='s:darker 
  exe 'hi CursorLineNr guifg='s:gray' guibg='s:dark 
  exe 'hi VertSplit guifg='s:dark' guibg='s:darker
  exe 'hi FoldColumn guifg='s:plum' guibg='s:darker 
  exe 'hi SignColumn guifg='s:plum' guibg='s:darker 
  
  exe 'hi PmenuSel guibg='s:dgray 
  exe 'hi PmenuThumb guibg='s:dgray
  exe 'hi PmenuSbar guibg='s:darker 
  exe 'hi Pmenu guifg='s:white' guibg='s:grayish

  exe 'hi WildMenu  guifg='s:white' guibg='s:dgray' gui=bold'  
  exe 'hi StatusLine guifg='s:white' guibg='s:grayish' gui=none'
  
  exe 'hi Directory guifg='s:brown  
  exe 'hi MatchParen guifg='s:darker' guibg='s:gray

" messages
  exe 'hi MoreMsg guifg='s:orange  
  exe 'hi WarningMsg guifg='s:orange' guibg='s:darker 
  exe 'hi Error guifg='s:darker' guibg='s:pink' gui=bold'
  exe 'hi ErrorMsg guifg='s:darker' guibg='s:pink' gui=bold'
  exe 'hi Question guifg='s:orange' guibg='s:dark' gui=bold'

"  diffy
  exe 'hi DiffAdd guibg='s:grayish
  exe 'hi DiffDelete guifg='s:plum' guibg='s:pink' gui=none'
  exe 'hi DiffChange  guibg='s:greenish
  exe 'hi DiffText guifg='s:pink' guibg='s:purple' gui=bold'

"  vimwiki is changed
  exe 'hi VimwikiLink guifg='s:purple' gui=bold'
  exe 'hi VimwikiHeader1 guifg='s:orange' gui=bold'
  exe 'hi VimwikiHeader2 guifg='s:pink' gui=bold'
  exe 'hi VimwikiHeader3 guifg='s:brite' gui=bold'
  exe 'hi VimwikiHeader4 guifg='s:brown' gui=bold'
  exe 'hi VimwikiHeader5 guifg='s:eggplant' gui=bold'
  exe 'hi VimwikiHeader6 guifg='s:plum' gui=bold'

" ch-ch-ch changes  
  exe 'hi ChangesSignTextAdd guifg='s:dgray' guibg='s:darker
  exe 'hi ChangesSignTextDel guifg='s:dgray' guibg='s:darker
  exe 'hi ChangesSignTextCh guifg='s:dgray' guibg='s:darker


"  markology
  exe 'hi MarkologyHLl guifg='s:plum' guibg='s:darker
  exe 'hi MarkologyHLo guifg='s:dgray' guibg='s:darker
  exe 'hi MarkologyHLLine guifg='s:white' guibg='s:grape

  "   MarkologyHLl  : This group is used to highlight all the lowercase marks.
  "   MarkologyHLu  : This group is used to highlight all the uppercase marks.
  "   MarkologyHLo  : This group is used to highlight all other marks.
  "   MarkologyHLm  : This group is used when multiple marks are on the same line.
  "   MarkologyHLLine : This group is used to highlight lines if line-highlighting is selected.

" language specific
  " Python Highlighting
  exe 'hi pythonBuiltin guifg='s:purple
  " exe 'hi pythonBuiltinFunc guifg='s:purple

  " Javascript Highlighting  
  exe 'hi jsBuiltins guifg='s:purple
  exe 'hi jsFunction guifg='s:purple' gui=bold'
  exe 'hi jsGlobalObjects guifg='s:plum
  exe 'hi jsAssignmentExps guifg='s:purple

  " Html Highlighting
  hi! link htmlTagName Statement 
  hi! link htmlTag Statement 
  hi! link htmlEndTag Statement 
  exe 'hi htmlLink guifg='s:white' gui=underline'
  exe 'hi htmlSpecialTagName guifg='s:purple

  " Markdown Highlighting  
  exe 'hi mkdCode guifg='s:purple

