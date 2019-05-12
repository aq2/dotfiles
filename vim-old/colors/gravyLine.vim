" =========================================================
" Author: kkopec
" Hacker: angelo
" License: MIT License
" =========================================================

let s:black = [ '#2d241e', 16 ]
let s:dgray = [ '#373632', 95 ]
let s:gray = [ '#968477', 14 ]
let s:white = [ '#b59784', 41 ]
let s:purple = [ '#2b2b2b', 17 ]
let s:orange = [ '#c8764a', 40 ]


let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

"                      MODE   fg      bg        git  fg      bg        unselected
let s:p.normal.left =  [ [ s:white, s:purple ], [ s:gray, s:purple ], [s:gray, s:black] ]
let s:p.insert.left =  [ [ s:black, s:orange ], [ s:gray, s:purple ], [s:gray, s:black] ] 
let s:p.visual.left =  [ [ s:black, s:orange ], [ s:gray, s:purple ], [s:gray, s:black] ]
let s:p.replace.left = [ [ s:black, s:orange ], [ s:gray, s:purple ], [s:gray, s:black] ]

"                       BAR   fg       bg 
let s:p.normal.middle = [ [ s:white, s:purple ] ]

"                      RIGHT  fg       bg      
let s:p.normal.right = [ [ s:white, s:purple ] ]
let s:p.insert.right = [ [ s:purple, s:orange  ] ]
let s:p.visual.right = [ [ s:purple, s:orange ] ]
let s:p.replace.right = [ [ s:purple, s:orange ] ]

"                        SEL   fg       bg 
let s:p.tabline.tabsel = [ [ s:white, s:dgray ] ]

"  only for tabline
let s:p.tabline.left = [ [ s:white, s:black ] ]
let s:p.tabline.middle = [ [ s:orange, s:purple ] ]
let s:p.tabline.right = [ [ s:white, s:black ] ]

" for inactive splits TODO
let s:p.inactive.left =  [ [ s:gray, s:purple ], [ s:purple, s:black ] ]
let s:p.inactive.middle = [ [ s:purple, s:black ] ]
let s:p.inactive.right = [ [ s:dgray, s:black ], [ s:dgray, s:black ] ]

" when are these used?
let s:p.normal.error = [ [ s:white, s:purple ] ]
let s:p.normal.warning = [ [ s:purple, s:white] ]

let g:lightline#colorscheme#gravyLine#palette = lightline#colorscheme#flatten(s:p)

