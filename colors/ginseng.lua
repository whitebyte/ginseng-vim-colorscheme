vim.cmd.highlight('clear')
vim.g.colors_name = 'ginseng'

local hi = function(name, val)
    -- Force links
    val.force = true

    -- Make sure that `cterm` attribute is not populated from `gui`
    val.cterm = val.cterm or {}

    -- Define global highlight
    vim.api.nvim_set_hl(0, name, val)
end

local colors = {
    black   = "#000000",
    brown1  = "#101006",
    beige1  = "#ddd6c0",
    beige2  = "#bcb592",
    beige3  = "#998877",
    grey1   = "#aeaeae",
    grey2   = "#747474",
    grey3   = "#565656",
    grey4   = "#303032",
    grey5   = "#181818",
    grey6   = "#080804",
    orange1 = "#df8800",
    orange2 = "#ff9800",
    yellow1 = "#ffee99",
    copper  = "#b05438",
    steel   = "#8898b2",
    purple  = "#946894",
    red1    = "#7a0400",
    red2    = "#840400",
    red3    = "#af0000",
    green   = "#344828",
    blue1   = "#87ceeb",
    blue2   = "#244486",
    blue3   = "#222860",
    white   = "#ffffff"
}

hi('Normal',              { fg = colors.beige1, bg = colors.brown1 });
hi('NormalNC',            { fg = colors.beige1, bg = colors.grey6 });
hi('NormalFloat',         { fg = colors.beige2, bg = colors.grey4 });
hi('Special',             { fg = "NONE" });
hi('Title',               { fg = colors.orange1 });
hi('Comment',             { fg = colors.grey2 , italic = true });
hi('Folded',              { fg = colors.grey1, bg = colors.grey4 })

hi('LineNr',              { fg = colors.beige2, bg = colors.black })

hi('NormalFloat',         { fg = colors.beige2, bg = colors.brown1})
hi('FloatBorder',         { link = 'WinSeparator' })
hi('FloatTitle',          { link = 'Title' })
hi('FloatFooter',         { link = 'Title' })

hi('Search',              { fg = colors.black, bg = colors.orange1 });
hi('IncSearch',           { fg = colors.black, bg = colors.orange2 });

hi('Visual',              { fg = colors.black, bg = colors.steel });

hi('Pmenu',               { fg = colors.black, bg = colors.beige2 });
hi('PmenuKind',           { fg = colors.grey3, bg = colors.beige2 });
hi('PmenuSel',            { fg = colors.black, bg = colors.orange1 });
hi('PmenuKindSel',        { link = 'PmenuSel' });
hi('PmenuThumb',          { fg = colors.black, bg = colors.beige2 });
hi('PmenuSbar',           { link = 'PmenuThumb' });

hi('String',              { fg = colors.grey1 });
hi('Character',           { fg = colors.grey1 });
hi('Number',              { fg = colors.orange1 });
hi('Float',               { fg = colors.orange1 });
hi('Boolean',             { fg = colors.orange2 });

hi('Type',                { fg = colors.copper });
hi('Statement',           { fg = colors.steel });
hi('Keyword',             { fg = colors.steel });
hi('Constant',            { fg = colors.orange2 });
hi('Structure',           { link = 'Type' })

hi('Identifier',          { fg = colors.beige3 });
hi('Function',            { fg = colors.orange1 });
hi('PreProc',             { fg = colors.beige2 });

hi('Todo',                { fg = colors.purple, bg = colors.grey5, bold = true });
hi('Error',               { fg = colors.red3, bg = colors.white, reverse = true });

hi('MoreMsg',             { fg = colors.beige2, bold = true });
hi('WarningMsg',          { fg = colors.orange2, bold = true });
hi('ErrorMsg',            { fg = colors.red3, bg = colors.white, reverse = true });

hi('CursorLine',          { bg = colors.black });
hi('CursorLineNr',        { fg = colors.orange1, bg = colors.black });
hi('CursorColumn',        { bg = colors.black });

hi('VertSplit',           { fg = colors.grey3 });
hi('WinSeparator',        { link = 'VertSplit' })

hi('Question',            { fg = colors.orange1 })
hi('QuickFixLine',        { fg = colors.white })

hi('DiffAdd',             { bg = colors.green });
hi('DiffDelete',          { fg = colors.red1, bg = colors.red2 });
hi('DiffChange',          { bg = colors.blue2 });
hi('DiffText',            { bg = colors.blue1 });

hi('Tag',                 { link = 'Special' })
hi('SpecialChar',         { link = 'Special' })
hi('Delimiter',           { link = 'Special' })
hi('SpecialComment',      { link = 'Special' })
hi('Debug',               { link = 'Special' })

hi('Directory',           { fg = colors.beige1 })


hi('ColorColumn',         { fg = colors.grey5 });

hi('DiagnosticError',      { fg = colors.red3 })
hi('DiagnosticWarn',       { fg = colors.orange1 })
hi('DiagnosticDeprecated', { fg = colors.steel, strikethrough = true, cterm = { strikethrough = true } })
hi('DiagnosticInfo',       { fg = colors.steel })
hi('DiagnosticHint',       { fg = colors.grey1 })
hi('DiagnosticOk',         { fg = colors.grey1 })

hi('DiagnosticSignError', { fg = colors.red3, bold = true })
hi('DiagnosticSignWarn',  { fg = colors.orange1, bold = true })
hi('DiagnosticSignInfo',  { link = 'DiagnosticInfo' })
hi('DiagnosticSignHint',  { link = 'DiagnosticHint' })
hi('DiagnosticSignOk',    { link = 'DiagnosticOk' })

-- TreeSitter
hi('@type',               { link = 'Type' });
hi('@type.builtin',       { link = 'Type' });
hi('@variable',           { link = 'Identifier' });
hi('@variable.builtin',   { link = 'Identifier' });
hi('@variable.member',    { fg = colors.beige2 });
hi('@variable.module',    { fg = colors.beige1 });
hi('@constant',           { link = 'Special' });
hi('@constant.builtin',   { link = 'Constant' });
hi('@comment',            { link = 'Comment' })
hi('@comment.error',      { fg = colors.red3 })
hi('@punctuation',        { link = 'Delimiter' })
hi('@tag',                { fg = colors.steel });
hi('@tag.attribute',      { fg = colors.copper });
hi('@string.special.url', { bold = true });

-- LSP
hi('LspDiagnosticsUnderlineError',   { fg = colors.red3, undercurl = true });
hi('LspDiagnosticsUnderlineWarning', { fg = colors.orange2, undercurl = true });

-- IndentBlankLine
hi('IblIndent',           { fg = colors.grey4 });
hi('IblWhitespace',       { fg = colors.grey4 });
hi('IblScope',            { fg = colors.grey3 });

-- Fugitive
hi('diffAdded',           { bg = colors.green });
hi('diffRemoved',         { fg = colors.red1, bg = colors.red2 });
