" Vim syntax file
" Language:     Moodle GIFT (General Import FormaT)
" Maintainer:   Clinton McKay
" Latest Revision: 21 February 2015

if exists("b:current_syntax")
  syntax on!
  syntax on
  " finish
endif

"------------------------------------------------------------------------/
" GIFT Comments
"------------------------------------------------------------------------/
syn keyword giftTodo containedin=giftComment contained TODO FIXME XXX NOTE
syn match giftComment "\/\/.*$" contains=giftTodo
"syn match giftQuestion "[:]{2}.*[^\\]{$"

"------------------------------------------------------------------------/
" GIFT blocks 
"------------------------------------------------------------------------/
syn region giftFormat oneline start='\[' end='\]'
syn region giftTitle start='::' end='::' nextgroup=giftQuestion 
" syn region giftQuestion start='::' end='{' skip='\\{' nextgroup=giftAnswers
syn region giftAnswers start='{' skip='\\}' end='}' keepend contains=giftAnswer
syn region giftAnswer start='=' skip='\\\~' end='\(.*[^~]\)' 
  \ containedin=giftAnswers  contained

"------------------------------------------------------------------------/
" Setup syntax highlighting
"------------------------------------------------------------------------/
let b:current_syntax = "gift"

hi def link giftComment         Comment
hi def link giftTodo            Todo
hi def link giftFormat          PreProc 
hi def link giftTitle           Title
hi def link giftAnswers         MoreMsg
hi def link giftQuestion        ModeMsg
hi def link giftAnswer          DiffText


