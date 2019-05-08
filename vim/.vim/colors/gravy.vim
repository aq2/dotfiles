" Vim colour scheme: gravy
" Author: angelo

"   init
  hi clear
  set t_Co=256
  " syntax reset
  " set background=dark
  let g:colors_name = "gravy"

" set colour variables
  let s:dgrape='#570246'
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

  let s:greenish='#1d2d10'
  let s:grayish='#392e27'


"   cursors
  set guicursor=i:ver20-iCursor
  hi iCursor guibg=yellow ctermbg=yellow
  hi CursorLine guibg=#373632 guifg=NONE cterm=none
  autocmd InsertEnter * hi CursorLine guibg=#405000 cterm=none
  autocmd InsertLeave * hi CursorLine guibg=#373632 cterm=none

" basic text
  exe 'hi Type guifg='s:plum
  exe 'hi Tag guifg='s:purple
  exe 'hi Comment guifg='s:gray
  exe 'hi PreProc guifg='s:plum
  exe 'hi Special guifg='s:gray
  exe 'hi Constant guifg='s:brown
  exe 'hi Underlined gui=underline'
  exe 'hi Operator guifg='s:eggplant
  exe 'hi Statement guifg='s:purple' gui=bold'
  exe 'hi Normal guifg='s:white' guibg='s:dark
  exe 'hi NonText guifg='s:dgray' guibg='s:dark

"  erm
  exe 'hi Search guibg='s:orange
  exe 'hi Visual guifg='s:dark' guibg='s:orange
  exe 'hi IncSearch guifg='s:white' guibg='s:dark

"   highlights
  exe 'hi Function guifg='s:brite
  exe 'hi Title guifg='s:brite' gui=bold'
  exe 'hi Identifier guifg='s:brite' gui=italic'
  exe 'hi Todo guifg='s:dark' guibg='s:brown' gui=bold'

"   line numbers and ui
  exe 'hi Folded guifg='s:plum' guibg='s:darker
  exe 'hi LineNr guifg='s:dgray' guibg='s:darker
  exe 'hi VertSplit guifg='s:darker' guibg='s:darker
  exe 'hi CursorLineNr guifg='s:gray' guibg='s:dark
  exe 'hi FoldColumn guifg='s:plum' guibg='s:darker
  exe 'hi SignColumn guifg='s:plum' guibg='s:darker

  exe 'hi PmenuSel guibg='s:dgray
  exe 'hi PmenuThumb guibg='s:dgray
  exe 'hi PmenuSbar guibg='s:darker
  exe 'hi Pmenu guifg='s:white' guibg='s:grayish

  exe 'hi WildMenu guifg='s:white' guibg='s:dgray' gui=bold'
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
  exe 'hi DiffAdd guibg='s:greenish
  exe 'hi DiffChange guibg='s:grayish
  exe 'hi DiffText guifg='s:pink' guibg='s:purple' gui=bold'
  exe 'hi DiffDelete guifg='s:plum' guibg='s:darker' gui=none'

"  vimwiki is changed
  exe 'hi VimwikiLink guifg='s:purple' gui=bold'
  exe 'hi VimwikiHeader1 guifg='s:brite' gui=bold'
  exe 'hi VimwikiHeader2 guifg='s:orange' gui=bold'
  exe 'hi VimwikiHeader3 guifg='s:brown' gui=bold'
  exe 'hi VimwikiHeader4 guifg='s:plum' gui=bold'
  exe 'hi VimwikiHeader5 guifg='s:pink' gui=bold'
  exe 'hi VimwikiHeader6 guifg='s:eggplant' gui=bold'

" ch-ch-ch changes
  exe 'hi ChangesSignTextCh guifg='s:dgray' guibg='s:darker
  exe 'hi ChangesSignTextAdd guifg='s:dgray' guibg='s:darker
  exe 'hi ChangesSignTextDel guifg='s:dgray' guibg='s:darker

"  markology
  exe 'hi MarkologyHLl guifg='s:gray' guibg='s:darker
  exe 'hi MarkologyHLu guifg='s:gray' guibg='s:darker
  exe 'hi MarkologyHLo guifg='s:dgray' guibg='s:darker
  exe 'hi MarkologyHLLine guifg='s:white' guibg='s:dgrape


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


" nerd
  exe  'hi NERDTreeDir guifg='s:purple

" TrailerTrash
  exe 'hi UnwantedTrailerTrash guibg='s:grape

"→→→ fzf
  let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'PMenu'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment']
  \ }

