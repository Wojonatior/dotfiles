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
    hi Boolean gui=NONE guifg=#209287 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#1a1a1a
    hi Comment gui=NONE guifg=#fdf6dd guibg=#082b35
    hi Conceal gui=NONE guifg=#808080 guibg=NONE
    hi Conditional gui=NONE guifg=#ca1670 guibg=NONE
    hi Constant gui=NONE guifg=#5a58bb guibg=NONE
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#082b35
    hi CursorLine gui=underline guifg=NONE guibg=#002029
    hi CursorLineNr gui=NONE guifg=#839191 guibg=NONE
    hi DiffAdd gui=NONE guifg=#082b35 guibg=#708a00
    hi DiffChange gui=NONE guifg=NONE guibg=#002029
    hi DiffDelete gui=NONE guifg=#002029 guibg=#d2191f
    hi DiffText gui=NONE guifg=#e9e2c8 guibg=#465b62
    hi Directory gui=NONE guifg=#d2191f guibg=NONE
    hi Error gui=NONE guifg=NONE guibg=#d2191f
    hi ErrorMsg gui=NONE guifg=#d2191f guibg=#082b35
    hi FoldColumn gui=NONE guifg=#e9e2c8 guibg=NONE
    hi Folded gui=NONE guifg=#a87900 guibg=#002029
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=underline guifg=#d2191f guibg=#082b35
    hi LineNr gui=NONE guifg=#839191 guibg=#002029
    hi MatchParen gui=NONE guifg=#002029 guibg=#fdf6dd
    hi ModeMsg gui=NONE guifg=#708a00 guibg=NONE
    hi MoreMsg gui=NONE guifg=#1a76cb guibg=NONE
    hi NonText gui=NONE guifg=#d2191f guibg=NONE
    hi Normal gui=NONE guifg=#839191 guibg=#082b35
    hi Number gui=NONE guifg=#708a00 guibg=NONE
    hi Pmenu gui=NONE guifg=#839191 guibg=#002029
    hi PmenuSbar gui=NONE guifg=#465b62 guibg=#465b62
    hi PmenuSel gui=NONE guifg=#e9e2c8 guibg=#082b35
    hi PmenuThumb gui=NONE guifg=NONE guibg=#1a76cb
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=underline guifg=#d2191f guibg=#082b35
    hi SignColumn gui=NONE guifg=#fdf6dd guibg=#082b35
    hi Special gui=NONE guifg=#209287 guibg=NONE
    hi SpecialKey gui=NONE guifg=#616161 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=#e9e2c8 guibg=#d2191f
    hi SpellCap gui=undercurl guisp=NONE guifg=#e9e2c8 guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=#e9e2c8 guibg=#708a00
    hi SpellRare gui=undercurl guisp=NONE guifg=#082b35 guibg=#e9e2c8
    hi Statement gui=NONE guifg=#1a76cb guibg=NONE
    hi StatusLine gui=NONE guifg=#1a76cb guibg=#002029
    hi StatusLineNC gui=NONE guifg=#707070 guibg=#002029
    hi StorageClass gui=NONE guifg=#a87900 guibg=NONE
    hi String gui=NONE guifg=#d2191f guibg=NONE
    hi TabLine gui=NONE guifg=#839191 guibg=#002029
    hi TabLineFill gui=NONE guifg=NONE guibg=#002029
    hi TabLineSel gui=NONE guifg=#1a76cb guibg=#082b35
    hi Title gui=NONE guifg=#fdf6dd guibg=NONE
    hi Todo gui=reverse guifg=#d2191f guibg=#e9e2c8
    hi Type gui=NONE guifg=#708a00 guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#e9e2c8 guibg=NONE
    hi Visual gui=NONE guifg=NONE guibg=#fdf6dd
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=#c03502 guibg=#082b35
    hi WildMenu gui=NONE guifg=#209287 guibg=#082b35
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier gui=NONE guifg=#ca1670 guibg=NONE
    hi PreProc gui=NONE guifg=#209287 guibg=NONE
endif
