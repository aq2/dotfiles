"put in directory below!

" =============================================================================
" Filename: autoload/lightline/colorscheme/gravyLine.vim
" Author: kkopec - hacked by me!
" License: MIT License
" Last Change: 2017/02/11 21:18:54.
" =============================================================================

let s:black = [ '#2d241e', 236 ]
let s:purple = [ '#2b2b2b', 235 ]
let s:green = [ '#629755', 71 ] 
let s:white = [ '#957764', 250 ]
let s:fg0 = [ '#584346', 91 ]
 " let s:fg0 = [ '#5c4a3e', 91 ]
" let s:fg0 = [ '#685346', 91 ]

let s:orange = [ '#c8764a', 104 ]
let s:blue = [ '#6897bb' , 67 ] 
let s:gray = [ '#2b2b2b', 235 ]


" let s:purple = [ '#073642', 104 ]
" let s:purple = [ '#5f5479', 104 ]
" let s:purple = [ '#9876aa', 104 ]
let s:red = [ '#ff2b68', 204 ]
let s:yellow = [ '#ffc66d', 222 ]
let s:yell = ['#ffff00', 222]


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
let s:p.insert.right = [ [ s:purple, s:green  ] ]
let s:p.visual.right = [ [ s:purple, s:green ] ]
let s:p.replace.right = [ [ s:purple, s:green ] ]

"                        SEL   fg       bg 
let s:p.tabline.tabsel = [ [ s:white, s:fg0 ] ]

"  only for tabline, spose
let s:p.tabline.left = [ [ s:blue, s:black ] ]
let s:p.tabline.middle = [ [ s:blue, s:purple ] ]
let s:p.tabline.right = [ [ s:white, s:black ] ]

" for inactive splits TODO
let s:p.inactive.left =  [ [ s:fg0, s:purple ], [ s:gray, s:black ] ]
let s:p.inactive.middle = [ [ s:purple, s:black ] ]
let s:p.inactive.right = [ [ s:fg0, s:black ], [ s:fg0, s:black ] ]

" when are these used?
let s:p.normal.error = [ [ s:red, s:yell ] ]
let s:p.normal.warning = [ [ s:yellow, s:yell ] ]

let g:lightline#colorscheme#gravyLine#palette = lightline#colorscheme#flatten(s:p)

