--- Script to compile Lush colors to Vim 8 colors

local uv = vim.loop
local lush = require('lush')
local colors = require('melange.colors')

-- TODO: Proper path handling
local target = './colors/melange.vim'

function get_colorscheme()
    local parsed = lush(colors)
    local compiled = lush.compile(parsed, {force_clean = true })
    return table.concat(compiled, '\n')
end

function write_colorscheme()
    local vimcolors = get_colorscheme()

    local fd = assert(uv.fs_open(target, 'w', 420))
    uv.fs_write(fd, vimcolors, -1)
    return assert(uv.fs_close(fd))
end

write_colorscheme()

return {
    build = write_colorscheme,
}
