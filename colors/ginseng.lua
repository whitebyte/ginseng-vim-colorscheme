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
    beige1  = "#ddd6c0",
    beige2  = "#bbb490",
    beige3  = "#998877",
    brown1  = "#141208",
    grey1   = "#aeaeae",
    grey2   = "#747474",
    grey3   = "#565656",
    grey4   = "#303032",
    grey5   = "#181818",
    orange1 = "#df8800",
    orange2 = "#ff9800",
    yellow1 = "#ffffbb",
    copper  = "#ad5640",
    steel   = "#8898b2",
    purple  = "#927292"
}

hi('Normal',              { fg = colors.beige1, bg = colors.brown1 });
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
hi('PmenuSel',            { fg = colors.black, bg = colors.orange2 });
hi('PmenuThumb',          { bg = colors.grey1 });

hi('String',              { fg = colors.grey1 });
hi('Character',           { fg = colors.grey1 });
hi('Number',              { fg = colors.orange1 });
hi('Float',               { fg = colors.orange1 });
hi('Boolean',             { fg = colors.orange2 });

hi('Type',                { fg = colors.copper });
hi('Statement',           { fg = colors.steel });
hi('Keyword',             { fg = colors.steel });
hi('Constant',            { fg = colors.orange2 });

hi('Identifier',          { fg = colors.beige3 });
hi('Function',            { fg = colors.orange1 });

hi('Todo',                { fg = colors.purple, bg = colors.grey5 });

hi('CursorLine',          { bg = colors.black });
hi('CursorLineNr',        { fg = colors.orange1, bg = colors.black });
hi('CursorColumn',        { bg = colors.black });

hi('@tag',                { fg = colors.steel });
hi('@tag.attribute',      { fg = colors.copper });
hi('@string.special.url', { underline = false });

hi('IblIndent',           { fg = colors.grey4 });
hi('IblWhitespace',       { fg = colors.grey4 });
hi('IblScope',            { fg = colors.grey3 });
