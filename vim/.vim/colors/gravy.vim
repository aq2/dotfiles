" Vim colour scheme - gravy

"   init
  if exists("syntax on")
    syntax reset
  endif

  hi clear
  set t_Co=256
  set background=dark
  let g:colors_name = "gravy"

" set colour variables.
  let s:darker="#2d241e"
  let s:dark="#312721"

  let s:dblue="#5f547d"
  let s:plum="#974670"
  let s:purple='#772266'
  let s:brown= "#907656"
  let s:orange="#e86310"
  let s:pink="#f81050"
  
  let s:fg0="#7a695c"
  let s:fg="#957764"
  let s:fg4="#a58a7a"
  
  let s:gray="#373632"
  let s:bg2="#3a3636"
  let s:bg3="#4b4747"
  let s:bg4="#5c5959"

  " let s:fg0="#5c4a3e"
  " let s:brown= "#806656"
  
  
  let s:fg1="#997a68"
  let s:fg2="#a3a3a3"
  let s:fg3="#959595"
  let s:builtin="#71a46c"
  let s:func="#b680b1"
  let s:var="#c27d7b"

"   cursors
  hi CursorLine guibg=#373632 guifg=NONE cterm=none
  autocmd InsertEnter * hi CursorLine guibg=#404000 cterm=none
  " autocmd InsertEnter * hi CursorLine guibg=#88360a
  autocmd InsertLeave * hi CursorLine guibg=#373632 cterm=none
  " autocmd InsertLeave * hi CursorLine guibg=#073642

  set guicursor=i:ver20-iCursor
  hi iCursor guibg=yellow ctermbg=yellow
  " hi Cursor guibg=steelblue ctermbg=red ctermfg=white

" basic text
  exe 'hi Normal guifg='s:fg' guibg='s:dark 
  exe 'hi Comment guifg='s:fg0  
  exe 'hi Underlined   gui=underline'

"   keywords
  exe 'hi Keyword guifg='s:dblue'  gui=bold'
  exe 'hi Statement guifg='s:dblue  
  exe 'hi Conditional guifg='s:dblue  
  exe 'hi PreProc guifg='s:dblue  
  exe 'hi Define guifg='s:dblue  
  hi! link htmlTagName Keyword 
  exe 'hi Operater guifg='s:dblue  
  exe 'hi StorageClass guifg='s:dblue

"   constants
  exe 'hi Constant guifg='s:brown  
  exe 'hi Boolean guifg='s:brown  
  exe 'hi Character guifg='s:brown  
  exe 'hi Float guifg='s:brown  
  exe 'hi Number guifg='s:brown  
  exe 'hi String guifg='s:brown  

"   highlights
  exe 'hi Title guifg='s:fg4'  gui=bold'
  exe 'hi Function guifg='s:fg4  
  exe 'hi Identifier guifg='s:fg4'  gui=italic'
  exe 'hi Todo guibg='s:fg4'  gui=bold'

"   line numbers and ui
  exe 'hi LineNr guifg='s:fg0' guibg='s:darker 
  exe 'hi CursorLineNr guifg='s:fg' guibg='s:dark 
  exe 'hi VertSplit guifg='s:bg' guibg='s:dark
  exe 'hi Folded guifg='s:plum' guibg='s:darker 

"  vimwiki
  exe 'hi VimwikiHeader1 guifg='s:orange' gui=bold'
  exe 'hi VimwikiHeader2 guifg='s:pink' gui=bold'
  exe 'hi VimwikiHeader3 guifg='s:fg4' gui=bold'
  exe 'hi VimwikiHeader4 guifg='s:brown' gui=bold'
  exe 'hi VimwikiHeader5 guifg='s:purple' gui=bold'
  exe 'hi VimwikiHeader6 guifg='s:plum' gui=bold'
  exe 'hi VimwikiLink guifg='s:dblue' gui=bold'

" sorta
  exe 'hi Special guifg='s:fg0  
  exe 'hi MatchParen guifg='s:darker' guibg='s:fg0
  exe 'hi Visual guifg='s:dark' guibg='s:fg
  exe 'hi Search guibg='s:fg
  exe 'hi IncSearch guifg='s:fg' guibg='s:dark 
  exe 'hi ErrorMsg guifg='s:darker' guibg='s:pink' gui=bold'
  exe 'hi Question guifg='s:orange' guibg='s:dark' gui=bold'
  exe 'hi WarningMsg guifg='s:fg' guibg='s:orange 
  exe 'hi Pmenu guifg='s:fg' guibg='s:bg2
  exe 'hi PmenuSel  guibg='s:bg3 
  exe 'hi WildMenu  guifg='s:bg' guibg='s:orange  
  exe 'hi Directory guifg='s:brown  

" dunno really
  exe 'hi Type guifg='s:plum 
  exe 'hi NonText guifg='s:bg4' guibg='s:dark 
  exe 'hi DiffAdd guifg=#000000 guibg=#ddffdd gui=bold'
  exe 'hi DiffDelete guifg=#ff0000'  
  exe 'hi DiffChange  guibg='s:bg2
  exe 'hi DiffText guifg=#000000 guibg=#ddddff gui=bold'
  exe 'hi Label guifg='s:var
  exe 'hi Tag guifg='s:dblue  
  " exe 'hi CursorColumn  guibg='s:bg2 
  " exe 'hi ColorColumn  guibg='s:bg2 

" lanuage specific
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

