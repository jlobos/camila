highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="camila"

function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="(has_key(a:style, "fg") ? a:style.fg : "NONE")
    \ "guibg="(has_key(a:style, "bg") ? a:style.bg : "NONE")
    \ "guisp="(has_key(a:style, "sp") ? a:style.sp : "NONE")
    \ "gui="(has_key(a:style, "gui") ? a:style.gui : "NONE")
endfunction

" Color Variables

let s:white = "#EFF0EB"
let s:black = "#282A36"
let s:red = "#FF5C57"
let s:yellow = "#F3F99D"
let s:green = "#5AF78E"
let s:blue = "#57C7FF"
let s:lightBlack = "#686868"

" Syntax Groups (descriptions and ordering from `:h w18`)

call s:h("Comment", { "fg": s:lightBlack })
call s:h("Constant", { "fg": s:white })
call s:h("String", { "fg": s:lightBlack })
call s:h("Character", { "fg": s:white })
call s:h("Number", { "fg": s:white })
call s:h("Boolean", { "fg": s:lightBlack })
call s:h("Float", { "fg": s:white })
call s:h("Identifier", { "fg": s:lightBlack })
call s:h("Function", { "fg": s:lightBlack })
call s:h("Statement", { "fg": s:white })
call s:h("Conditional", { "fg": s:white })
call s:h("Repeat", { "fg": s:white })
call s:h("Label", { "fg": s:white })
call s:h("Operator", { "fg": s:white })
call s:h("Keyword", { "fg": s:white })
call s:h("Exception", { "fg": s:lightBlack })
call s:h("PreProc", { "fg": s:lightBlack })
call s:h("Include", { "fg": s:lightBlack })
call s:h("Define", { "fg": s:lightBlack })
call s:h("Macro", { "fg": s:lightBlack })
call s:h("PreCondit", { "fg": s:lightBlack })
call s:h("Type", { "fg": s:lightBlack })
call s:h("StorageClass", { "fg": s:lightBlack })
call s:h("Structure", { "fg": s:white })
call s:h("Typedef", { "fg": s:green })
call s:h("Special", { "fg": s:white })
call s:h("SpecialChar", {})
call s:h("Tag", {})
call s:h("Delimiter", {})
call s:h("SpecialComment", { "fg": s:lightBlack })
call s:h("Debug", {})
call s:h("Underlined", { "gui": "underline", "cterm": "underline" })
call s:h("Ignore", {})
call s:h("Error", { "fg": s:white })
call s:h("Todo", { "fg": s:white })

" Highlighting Groups (descriptions and ordering from `:h highlight-groups`)

call s:h("ColorColumn", { "bg": s:green })
call s:h("Conceal", {})
call s:h("Cursor", { "fg": s:white, "bg": s:lightBlack })
call s:h("CursorIM", {})
call s:h("CursorColumn", { "bg": s:green })
call s:h("CursorLine", { "fg": s:white, "bg": s:lightBlack })
call s:h("Directory", { "fg": s:lightBlack })
call s:h("DiffAdd", { "bg": s:green, "fg": s:green })
call s:h("DiffChange", { "bg": s:yellow, "fg": s:black })
call s:h("DiffDelete", { "bg": s:green, "fg": s:black })
call s:h("DiffText", { "bg": s:black, "fg": s:yellow })
call s:h("ErrorMsg", { "fg": s:red })
call s:h("VertSplit", { "fg": s:green })
call s:h("Folded", { "fg": s:green })
call s:h("FoldColumn", {})
call s:h("SignColumn", {})
call s:h("IncSearch", { "fg": s:lightBlack, "bg": s:white })
call s:h("LineNr", { "fg": s:lightBlack })
call s:h("CursorLineNr", {})
call s:h("MatchParen", { "fg": s:lightBlack, "gui": "underline" })
call s:h("ModeMsg", {})
call s:h("MoreMsg", {})
call s:h("NonText", { "fg": s:black })
call s:h("Normal", { "fg": s:white, "bg": s:black })
call s:h("Pmenu", { "bg": s:green })
call s:h("PmenuSel", { "fg": s:black, "bg": s:green })
call s:h("PmenuSbar", { "bg": s:green })
call s:h("PmenuThumb", { "bg": s:white })
call s:h("Question", { "fg": s:white })
call s:h("Search", { "fg": s:white, "bg": s:lightBlack })
call s:h("QuickFixLine", { "fg": s:black, "bg": s:green })
call s:h("SpecialKey", { "fg": s:lightBlack })
call s:h("SpellBad", { "fg": s:green, "gui": "underline" })
call s:h("SpellCap", { "fg": s:green })
call s:h("SpellLocal", { "fg": s:green })
call s:h("SpellRare", { "fg": s:green })
call s:h("StatusLine", { "fg": s:white, "bg": s:black })
call s:h("StatusLineNC", { "fg": s:white })
call s:h("TabLine", { "fg": s:lightBlack })
call s:h("TabLineFill", {})
call s:h("TabLineSel", { "fg": s:white })
call s:h("Title", { "fg": s:lightBlack })
call s:h("Visual", { "fg": s:white, "bg": s:lightBlack })
call s:h("VisualNOS", { "bg": s:green })
call s:h("WarningMsg", { "fg": s:green })
call s:h("WildMenu", { "fg": s:white, "bg": s:lightBlack })

" Plugin Highlighting

" airblade/vim-gitgutter
call s:h("GitGutterAdd", { "fg": s:green })
call s:h("GitGutterChange", { "fg": s:yellow })
call s:h("GitGutterDelete", { "fg": s:red })

" neomake/neomake
call s:h("NeomakeWarningSign", { "fg": s:yellow })
call s:h("NeomakeErrorSign", { "fg": s:red })
call s:h("NeomakeInfoSign", { "fg": s:blue })

set background=dark
