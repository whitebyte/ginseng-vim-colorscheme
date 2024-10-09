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
    beige1 = "#ddd6c0",
    beige2 = "#bbb490",
    brown1 = "#141208",
    grey1  = "#aeaeae",
    grey2  = "#747474",
    grey3  = "#303232",
    grey4  = "#141208"
}

hi('Normal',       { fg = colors.beige1, bg = colors.grey4 });
hi('Comment',      { fg = colors.grey1 });
hi('String',       { fg = colors.grey1 });
hi('Character',    { fg = colors.grey1 });

