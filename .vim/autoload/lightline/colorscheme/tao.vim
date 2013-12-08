" =============================================================================
" Filename: autoload/lightline/colorscheme/tao.vim
" Version: 0.1
" Author: Peter
" License: GNU License
" =============================================================================
let s:bg = [ '#fefefe', 119 ]
let s:base03 = [ '#333333', 235 ]
let s:base023 = [ '#424242 ', 236 ]
let s:base02 = [ '#555555 ', 238 ]
let s:base01 = [ '#6b6b6b', 240 ]
let s:base00 = [ '#919191', 242  ]
let s:base0 = [ '#aaaaaa', 244 ]
let s:base1 = [ '#bcbcbc', 247 ]
let s:base2 = [ '#dedede', 248 ]
let s:base3 = [ '#eeeeee', 0 ]
let s:yellow = [ '#cae682', 180 ]
let s:orange = [ '#e5786d', 173 ]
let s:red = [ '#e5786d', 203 ]
let s:magenta = [ '#f2c68a', 216 ]
let s:blue = [ '#8ac6f2', 117 ]
let s:cyan = s:blue
let s:green = [ '#95e454', 119 ]
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base02, s:base3 ], [ s:base3, s:base01 ] ]
let s:p.normal.right = [ [ s:base2, s:base00 ], [ s:base3, s:base01 ] ]
let s:p.normal.middle = [ [ s:base2, s:base02 ] ]
let s:p.normal.error = [ [ s:base03, s:base1 ] ]
let s:p.normal.warning = [ [ s:base023, s:base0 ] ]
let s:p.inactive.left =  [ [ s:base02, s:base2 ], [ s:base0, s:base1 ] ]
let s:p.inactive.right = [ [ s:base02, s:base1 ], [ s:base01, s:base2 ] ]
let s:p.inactive.middle = [ [ s:base1, s:base3 ] ]
let s:p.insert.left = [ [ s:bg, s:base03 ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:base023, s:base3 ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:base02, s:base1 ], [ s:base3, s:base01 ] ]
let s:p.tabline.left = [ [ s:base01, s:base2 ] ]
let s:p.tabline.tabsel = [ [ s:base02, s:bg ] ]
let s:p.tabline.middle = [ [ s:base1, s:base3 ] ]
let s:p.tabline.right = [ [ s:base2, s:base0 ] ]

let g:lightline#colorscheme#tao#palette = lightline#colorscheme#flatten(s:p)
