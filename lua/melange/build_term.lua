--- Script to build terminal colors
--- For now, there's only a function for Alacritty

local uv = vim.loop
local lush = require('lush')
local c = require('melange.colors')

local function build_alacritty()
    return table.concat({
        '  primary:',
        '    foreground: ' .. c.Normal.fg,
        '    background: ' .. c.Normal.bg,
        '  normal:',
        '    white:   ' .. c.Normal.fg,
        '    black:   ' .. c.Normal.bg,
        '    red:     ' .. c.Error.fg,
        '    yellow:  ' .. c.Function.fg,
        '    green:   ' .. c.TSKeywordFunction.fg, -- teal
        '    cyan:    ' .. c.TSStringEscape.fg,   -- TODO
        '    blue:    ' .. c.String.fg,
        '    magenta: ' .. c.Number.fg,
        '  bright:',
        '    white:   ' .. c.Search.fg,          -- pop
        '    black:   ' .. c.NormalFloat.bg,     -- subtle
        '    red:     ' .. c.Error.fg,
        '    yellow:  ' .. c.Statement.fg,       -- orange
        '    green:   ' .. c.Question.fg,
        '    cyan:    ' .. c.TSStringEscape.fg,   -- TODO
        '    blue:    ' .. c.String.fg,
        '    magenta: ' .. c.Constant.fg,        -- purple
    }, '\n')
end

-- TODO: Proper path handling
local terminals = {
    alacritty = {build = build_alacritty, target = './term/alacritty.yml'}
}

local function build_term(term)
    local term = terminals[term]
    local colors = term.build()
    local fd = assert(uv.fs_open(term.target, 'w', 420))
    uv.fs_write(fd, colors, -1)
end

build_term('alacritty')

return {
    build_term = build_term,
}
