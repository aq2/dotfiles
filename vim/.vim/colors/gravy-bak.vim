" Vim colour scheme - gravy

"   init
  hi clear

  if exists("syntax on")
    syntax reset
  endif

  set t_Co=256
  set background=dark
  let g:colors_name = "gravy"

" set colour variables.
  let s:bg0="#2d241e"
  " let s:bg0="#2f2620"
  let s:bg="#312721"

  let s:fg0="#6c5a4e"
  " let s:fg0="#5c4a3e"
  let s:fg="#957764"
  let s:fg4="#a58a7a"
  let s:keyword="#5f547d"
  let s:type="#974670"
  let s:const= "#806656"
  let s:punc='#772266'
  let s:warning="#f81050"
  
  let s:fg1="#997a68"
  let s:bg2="#3a3636"
  let s:bg3="#4b4747"
  let s:bg4="#5c5959"
  let s:fg2="#a3a3a3"
  let s:fg3="#959595"
  let s:builtin="#71a46c"
  let s:comment="#5d5a58"
  let s:func="#b680b1"
  let s:str="#71a19f"
  let s:var="#c27d7b"
  let s:warning2="#e86310"

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
  exe 'hi Normal guifg='s:fg' guibg='s:bg 
  exe 'hi Comment guifg='s:fg0  
  exe 'hi Underlined   gui=underline'

"   keywords
  exe 'hi Keyword guifg='s:keyword'  gui=bold'
  exe 'hi Statement guifg='s:keyword  
  exe 'hi Conditional guifg='s:keyword  
  exe 'hi PreProc guifg='s:keyword  
  exe 'hi Define guifg='s:keyword  
  hi! link htmlTagName Keyword 

"   constants
  exe 'hi Constant guifg='s:const  
  exe 'hi Boolean guifg='s:const  
  exe 'hi Character guifg='s:const  
  exe 'hi Float guifg='s:const  
  exe 'hi Number guifg='s:const  
  exe 'hi String guifg='s:const  

"   highlights
  exe 'hi Title guifg='s:fg4'  gui=bold'
  exe 'hi Function guifg='s:fg4  
  exe 'hi Identifier guifg='s:fg4'  gui=italic'
  " hi VimwikiHeader1 guifg=#ab8e38 gui=bold
  hi! link VimwikiHeader1 Title

  exe 'hi Todo guibg='s:fg4'  gui=bold'

"   line numbers and ui
  exe 'hi LineNr guifg='s:fg0' guibg='s:bg0 
  exe 'hi CursorLineNr guifg='s:fg' guibg='s:bg 
  exe 'hi VertSplit guifg='s:bg' guibg='s:bg 
  exe 'hi Folded guifg='s:type' guibg='s:bg0 

"   type?
  exe 'hi Type guifg='s:type 

  exe 'hi htmlTag guifg='s:punc
  exe 'hi htmlEndTag guifg='s:punc
  exe 'hi Special guifg='s:punc  
  exe 'hi MatchParen guifg='s:bg0' guibg='s:fg0

  exe 'hi Visual guifg='s:bg' guibg='s:fg
  exe 'hi Search guibg='s:fg
  exe 'hi IncSearch guifg='s:fg' guibg='s:bg 

  exe 'hi ErrorMsg guifg='s:bg0' guibg='s:warning' gui=bold'

  "??
  exe 'hi Question guifg='s:fg' guibg='s:warning2' gui=bold'


exe 'hi WarningMsg guifg='s:fg' guibg='s:warning2 


exe 'hi NonText guifg='s:bg4' guibg='s:bg 


exe 'hi Pmenu guifg='s:fg' guibg='s:bg2
exe 'hi PmenuSel  guibg='s:bg3 
exe 'hi WildMenu  guifg='s:bg' guibg='s:warning2  
exe 'hi Directory guifg='s:const  

exe 'hi DiffAdd guifg=#000000 guibg=#ddffdd gui=bold'
exe 'hi DiffDelete guifg=#ff0000'  
exe 'hi DiffChange  guibg='s:bg2
exe 'hi DiffText guifg=#000000 guibg=#ddddff gui=bold'
exe 'hi Label guifg='s:var
exe 'hi Operater guifg='s:keyword  
exe 'hi SpecialKey guifg='s:fg2' guibg='s:bg2 
exe 'hi StorageClass guifg='s:type'  gui=italic'
exe 'hi Tag guifg='s:keyword  

" Python Highlighting
exe 'hi pythonBuiltinFunc guifg='s:builtin

" Javascript Highlighting
exe 'hi jsBuiltins guifg='s:builtin
exe 'hi jsFunction guifg='s:keyword' gui=bold'
exe 'hi jsGlobalObjects guifg='s:type
exe 'hi jsAssignmentExps guifg='s:var

" Html Highlighting
exe 'hi htmlLink guifg='s:var' gui=underline'
exe 'hi htmlStatement guifg='s:keyword
exe 'hi htmlSpecialTagName guifg='s:keyword

" Markdown Highlighting
exe 'hi mkdCode guifg='s:builtin


" exe 'hi CursorColumn  guibg='s:bg2 
" exe 'hi ColorColumn  guibg='s:bg2 


  hi VimwikiHeader2 guifg=#944499 gui=bold
  hi VimwikiHeader3 guifg=#506a50 gui=bold
  hi VimwikiHeader4 guifg=#FF00FF gui=bold
  hi VimwikiHeader5 guifg=#00FFFF gui=bold
  hi VimwikiHeader6 guifg=#FFFF00 gui=bold

  hi VimwikiLink guifg=#5f547d gui=bold
  " hi VimwikiLink guifg=#6f649d gui=bold
  " let s:keyword="#5f547d"
  " hi VimwikiLink guifg=#444499 gui=bold
