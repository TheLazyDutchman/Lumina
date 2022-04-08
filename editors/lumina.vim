syn keyword basicKeyword var const if else while func type sizeof return import
syn match comment "//.*$"
syn match identifier "[A-Za-z_]\+"
syn region block start="{" end="}" fold transparent
syn match number "\d\+"
syn match string '".*"'
syn match character "\'\\?\'"

let b:current_syntax = "lumina"

hi def link basicKeyword Statement
hi def link comment Comment
hi def link number Constant
hi def link string Constant
hi def link character Constant
hi def link identifier Type
