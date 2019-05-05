" =========================================================
" Author: kkopec
" Hacker: aq2
" License: MIT License
" Last Change: 2017/02/11 2019/4/30
" =========================================================

let s:black = [ '#4d443e', 213 ]
let s:purple = [ '#4b4b4b', 235 ]
let s:green = [ '#82b775', 71 ] 
let s:white = [ '#b59784', 250 ]
let s:orange = [ '#e8966a', 104 ]
let s:midgray = [ '#615751', 91 ]
" let s:midgray = [ '#676662', 91 ]
" let s:midgray = [ '#373632', 91 ]

let s:red = [ '#ff4b88', 204 ]
let s:yellow = [ '#ffe68d', 222 ]


let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

"                      MODE   fg      bg        git  fg      bg        unselected
let s:p.normal.left =  [ [ s:white, s:purple ], [ s:green, s:purple ], [s:white, s:black] ]
let s:p.insert.left =  [ [ s:black, s:orange ], [ s:green, s:purple ], [s:white, s:black] ] 
let s:p.visual.left =  [ [ s:black, s:orange ], [ s:green, s:purple ], [s:white, s:black] ]
let s:p.replace.left = [ [ s:black, s:orange ], [ s:green, s:purple ], [s:white, s:black] ]

"                       BAR   fg       bg 
let s:p.normal.middle = [ [ s:white, s:purple ] ]

"                      RIGHT  fg       bg      
let s:p.normal.right = [ [ s:white, s:purple ] ]
let s:p.insert.right = [ [ s:purple, s:orange  ] ]
let s:p.visual.right = [ [ s:purple, s:orange ] ]
let s:p.replace.right = [ [ s:purple, s:orange ] ]

"                        SEL   fg       bg 
let s:p.tabline.tabsel = [ [ s:green, s:midgray ] ]

"  only for tabline
let s:p.tabline.left = [ [ s:white, s:black ] ]
let s:p.tabline.middle = [ [ s:orange, s:purple ] ]
let s:p.tabline.right = [ [ s:white, s:black ] ]

" for inactive splits
let s:p.inactive.left =  [ [ s:green, s:purple ], [ s:purple, s:black ] ]
let s:p.inactive.middle = [ [ s:purple, s:black ] ]
" let s:p.inactive.right = [ [ s:midgray, s:black ] ]
let s:p.inactive.right = [ [ s:midgray, s:black ], [ s:midgray, s:black ], [s:red, s:red ] ]

" when are these used?
let s:p.normal.error = [ [ s:red, s:yellow ] ]
let s:p.normal.warning = [ [ s:yellow, s:red ] ]

let g:lightline#colorscheme#gravyLine3#palette = lightline#colorscheme#flatten(s:p)

