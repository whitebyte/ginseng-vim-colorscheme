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
    beige1  = "#ddd6c0",
    beige2  = "#bbb490",
    beige3  = "#998877",
    brown1  = "#141208",
    grey1   = "#aeaeae",
    grey2   = "#747474",
    grey3   = "#303032",
    grey4   = "#141208",
    orange1 = "#df8800",
    orange2 = "#ff9800",
    copper  = "#ad5640",
    steel   = "#8898b2"
}

hi('Normal',          { fg = colors.beige1, bg = colors.grey4 });
hi('Comment',         { fg = colors.grey1 });

hi('String',          { fg = colors.grey1 });
hi('Character',       { fg = colors.grey1 });
hi('Number',          { fg = colors.orange1 });
hi('Float',           { fg = colors.orange1 });
hi('Boolean',         { fg = colors.orange2 });

hi('Type',            { fg = colors.copper });
hi('Statement',       { fg = colors.steel });
hi('Keyword',         { fg = colors.steel });

hi('Identifier',      { fg = colors.beige3 });
hi('Function',        { fg = colors.orange1 });

hi('@tag',            { fg = colors.steel });
hi('@tag.attribute',  { fg = colors.copper });

