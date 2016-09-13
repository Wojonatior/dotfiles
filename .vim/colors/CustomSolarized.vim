hi clear
syntax reset
let g:colors_name = "CustomSolarized"
if &background == "light"
    hi Boolean gui=NONE guifg=#707070 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#f5f5f5
    hi Comment gui=NONE guifg=#969696 guibg=NONE
    hi Conceal gui=NONE guifg=#707070 guibg=NONE
    hi Conditional gui=NONE guifg=#4a4a4a guibg=NONE
    hi Constant gui=NONE guifg=#707070 guibg=NONE
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#f5f5f5
    hi CursorLine gui=NONE guifg=NONE guibg=#f5f5f5
    hi CursorLineNr gui=NONE guifg=#969696 guibg=NONE
    hi DiffAdd gui=NONE guifg=NONE guibg=#f0fff0
    hi DiffChange gui=NONE guifg=NONE guibg=#f5f5f5
    hi DiffDelete gui=NONE guifg=NONE guibg=#fff0f0
    hi DiffText gui=NONE guifg=NONE guibg=#e3e3e3
    hi Directory gui=NONE guifg=#4a4a4a guibg=NONE
    hi Error gui=NONE guifg=NONE guibg=#fff0f0
    hi ErrorMsg gui=NONE guifg=NONE guibg=#fff0f0
    hi FoldColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Folded gui=NONE guifg=#969696 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=NONE guibg=#e3e3e3
    hi LineNr gui=NONE guifg=#c2c2c2 guibg=NONE
    hi MatchParen gui=NONE guifg=NONE guibg=#e3e3e3
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Normal gui=NONE guifg=#000000 guibg=#ffffff
    hi Number gui=NONE guifg=#707070 guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#f5f5f5
    hi PmenuSbar gui=NONE guifg=NONE guibg=#ededed
    hi PmenuSel gui=NONE guifg=NONE guibg=#e3e3e3
    hi PmenuThumb gui=NONE guifg=NONE guibg=#dbdbdb
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=NONE guifg=NONE guibg=#ededed
    hi SignColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Special gui=NONE guifg=#707070 guibg=NONE
    hi SpecialKey gui=NONE guifg=#c2c2c2 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#fff0f0
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#f0fff0
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#ededed
    hi Statement gui=NONE guifg=#4a4a4a guibg=NONE
    hi StatusLine gui=NONE guifg=#262626 guibg=#ededed
    hi StatusLineNC gui=NONE guifg=#969696 guibg=#ededed
    hi StorageClass gui=NONE guifg=#4a4a4a guibg=NONE
    hi String gui=NONE guifg=#707070 guibg=NONE
    hi TabLine gui=NONE guifg=#969696 guibg=#ededed
    hi TabLineFill gui=NONE guifg=NONE guibg=#ededed
    hi TabLineSel gui=NONE guifg=#262626 guibg=#ededed
    hi Title gui=NONE guifg=#707070 guibg=NONE
    hi Todo gui=standout guifg=NONE guibg=NONE
    hi Type gui=NONE guifg=#4a4a4a guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#e3e3e3 guibg=NONE
    hi Visual gui=NONE guifg=NONE guibg=#e3e3e3
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#fff0f0
    hi WildMenu gui=NONE guifg=NONE guibg=#d1d1d1
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier gui=NONE guifg=NONE guibg=NONE
    hi PreProc gui=NONE guifg=NONE guibg=NONE
elseif &background == "dark"
    hi Boolean gui=NONE guifg=#738a00 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#1a1a1a
    hi Comment gui=NONE guifg=#e9e3c9 guibg=NONE
    hi Conceal gui=NONE guifg=#808080 guibg=NONE
    hi Conditional gui=NONE guifg=#bc3810 guibg=NONE
    hi Constant gui=NONE guifg=#258e83 guibg=NONE
    hi Cursor gui=reverse guifg=#839191 guibg=#0d2935
    hi CursorColumn gui=NONE guifg=NONE guibg=#07212c
    hi CursorLine gui=NONE guifg=NONE guibg=#0d2935
    hi CursorLineNr gui=NONE guifg=#839191 guibg=#495c65
    hi DiffAdd gui=NONE guifg=NONE guibg=#0e6902
    hi DiffChange gui=NONE guifg=NONE guibg=#0d2935
    hi DiffDelete gui=NONE guifg=NONE guibg=#800000
    hi DiffText gui=NONE guifg=NONE guibg=#610002
    hi Directory gui=NONE guifg=#cc1e1e guibg=NONE
    hi Error gui=NONE guifg=NONE guibg=#260808
    hi ErrorMsg gui=NONE guifg=#cc1e1e guibg=#0d2935
    hi FoldColumn gui=NONE guifg=#839191 guibg=NONE
    hi Folded gui=NONE guifg=#839191 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=NONE guibg=#333333
    hi LineNr gui=NONE guifg=#495c65 guibg=#0d2a35
    hi MatchParen gui=NONE guifg=#0d2935 guibg=#718284
    hi ModeMsg gui=NONE guifg=#738a00 guibg=#07212c
    hi MoreMsg gui=NONE guifg=#2f9287 guibg=NONE
    hi NonText gui=NONE guifg=#495c65 guibg=#07212c
    hi Normal gui=NONE guifg=#718284 guibg=#07212c
    hi Number gui=NONE guifg=#cc1e1e guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#e9e3c9
    hi PmenuSbar gui=NONE guifg=#fcf5d9 guibg=#07212c
    hi PmenuSel gui=NONE guifg=#e9e3c9 guibg=#495c65
    hi PmenuThumb gui=NONE guifg=#2772ce guibg=#2772ce
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=NONE guifg=NONE guibg=#262626
    hi SignColumn gui=NONE guifg=#616161 guibg=#07212c
    hi Special gui=NONE guifg=#d01b24 guibg=NONE
    hi SpecialKey gui=NONE guifg=#616161 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#cc1e1e
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#738a00
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#c01b73
    hi Statement gui=NONE guifg=#2772ce guibg=NONE
    hi StatusLine gui=NONE guifg=#718284 guibg=#0d2935
    hi StatusLineNC gui=NONE guifg=#495c65 guibg=#0d2935
    hi StorageClass gui=NONE guifg=#a37a00 guibg=NONE
    hi String gui=NONE guifg=#2f9287 guibg=NONE
    hi TabLine gui=NONE guifg=#718284 guibg=#0c2832
    hi TabLineFill gui=NONE guifg=#052029 guibg=#051f29
    hi TabLineSel gui=NONE guifg=#718284 guibg=#e8e2c9
    hi Title gui=NONE guifg=#e9e3c9 guibg=NONE
    hi Todo gui=underline guifg=#c01b73 guibg=NONE
    hi Type gui=NONE guifg=#738a00 guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=standout guifg=#0d2935 guibg=#0d2935
    hi Visual gui=NONE guifg=NONE guibg=#e9e3c9
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=#07212c guibg=#cc1e1e
    hi WildMenu gui=NONE guifg=#718284 guibg=#fcf5d9
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier gui=NONE guifg=#1f6ebd guibg=NONE
    hi PreProc gui=NONE guifg=#2f9287 guibg=NONE
endif
