local M = {}

M.config = {
    termguicolors = true,
    fsync = true,
    undofile = true,
    completeopt = 'menuone,noinsert,noselect',
    smartcase = true,
    clipboard = 'unnamedplus',
    tabstop = 4,
    softtabstop = 0,
    expandtab = true,
    shiftwidth = 4,
    ai = true,
    si = true,
    mouse = 'a',
    showcmd = true,
    number = true,
    relativenumber = true,
    autoindent = true,
    background = 'dark',
    title = false,
    cursorline = false,
    list = true,
    ignorecase = true,
    colorcolumn = '',
    splitbelow = true,
    splitright = true,
    scrolloff = 3,
    numberwidth = 4,
    fillchars = ' ',
    commands = [[]]
}

function M.setup(config)
    for key, value in pairs(config) do
        -- set fillchars
        if key == "fillchars" then
            vim.opt.fillchars:append({ eob = value })
            goto continue
        end
        -- set commands
        vim.cmd([[
            autocmd!
            filetype on
            filetype indent on
            filetype plugin on
            syntax on
            set nowrap
            set t_Co=256
            set t_ut=
        ]])
        if key == "commands" then
            vim.cmd(value)
            goto continue
        end
        vim.opt[key] = value
        ::continue::
    end
end

return M
