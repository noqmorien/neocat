return {
    {
        'nvim-lualine/lualine.nvim',
        config = function()
            local themes = require'lualine.themes.auto'
            local lualine = require'lualine'
            local colors = {
                black        = '#282828',
                white        = '#ebdbb2',
                red          = '#fb4934',
                green        = '#b8bb26',
                blue         = '#83a598',
                yellow       = '#fe8019',
                gray         = '#a89984',
                darkgray     = '#3c3836',
                lightgray    = '#504945',
                inactivegray = '#7c6f64',
            }
            local config = {
                options = {
                    theme = themes,
                    section_separators = { left = ' ', right = ' '},
                    component_separators = "",
                },
                globalstatus = true,
                refresh = {
                    refresh_time = 16,
                },
                sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_y = {},
                    lualine_z = {},
                    lualine_c = {},
                    lualine_x = {}
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_v = {},
                    lualine_y = {},
                    lualine_z = {},
                    lualine_c = {},
                    lualine_x = {}
                },
                tabline = {},
                winbar = {},
                inactive_winbar = {},
                extensions = {}
            }

            local conditions = {
                buffer_not_empty = function() return vim.fn.empty(vim.fn.expand('%:t')) ~= 1 end,
                hide_in_width = function() return vim.fn.winwidth(0) > 80 end,
                check_git_workspace = function()
                    local filepath = vim.fn.expand('%:p:h')
                    local gitdir = vim.fn.finddir('.git', filepath .. ';')
                    return gitdir and #gitdir > 0 and #gitdir < #filepath
                end
            }

            local function ins_left(component)
                table.insert(config.sections.lualine_c, component)
            end

            local function ins_right(component)
                table.insert(config.sections.lualine_x, component)
            end


            ins_left {
                function() return '▊' end,
                left_padding = 4,
            }

            ins_left {
                function()
                    local mode_color = {
                        n = colors.green,
                        i = colors.red,
                        v = colors.blue,
                        [''] = colors.blue,
                        V = colors.blue,
                        c = colors.magenta,
                        no = colors.red,
                        s = colors.orange,
                        S = colors.orange,
                        [''] = colors.orange,
                        ic = colors.yellow,
                        R = colors.violet,
                        Rv = colors.violet,
                        cv = colors.red,
                        ce = colors.red,
                        r = colors.cyan,
                        rm = colors.cyan,
                        ['r?'] = colors.cyan,
                        ['!'] = colors.red,
                        t = colors.red
                    }
                    local mode_name = {
                        n = 'NORMAL',
                        i = 'INSERT',
                        v = 'VISUAL',
                        [''] = 'VISUAL',
                        V = 'VISUAL',
                        c = 'COMMAND',
                        no = 'NO MODE',
                        s = 'SELECT',
                        S = 'SELECT',
                        [''] = 'SELECT',
                        ic = 'INSERT',
                        R = 'REPLACE',
                        Rv = 'REPLACE',
                        cv = 'COMMAND',
                        ce = 'COMMAND',
                        r = 'REGION',
                        rm = 'REGION',
                        ['r?'] = 'REGION',
                        ['!'] = 'EX',
                        t = 'TERMINAL'
                    }
                    vim.api.nvim_command('hi! LualineMode guifg=' .. mode_color[vim.fn.mode()])
                    return ' ' .. mode_name[vim.fn.mode()] .. " MODE"
                end,
                color = "LualineMode",
                left_padding = 4,
            }

            ins_left {
                "branch",
                condition = conditions
            }

            ins_left {
                "filename"
            }

            ins_left {
                "diff"
            }

            ins_left {
                function() return '%=' end
            }

            ins_right {
                function()
                    local msg = 'No Active Lsp'
                    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                    local clients = vim.lsp.get_clients()
                    if next(clients) == nil then return msg end
                    for _, client in ipairs(clients) do
                        local filetypes = client.config.filetypes
                        if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                            return client.name
                        end
                    end
                    return msg
                end,
                icon = ' ',
                color = { fg = colors.fg }
            }

            ins_right {
                "o:encoding",
            }

            ins_right {
                "fileformat"
            }

            ins_right {
                function()
                    local function format_file_size(file)
                        local size = vim.fn.getfsize(file)
                        if size <= 0 then return '' end
                        local sufixes = { 'B', 'KB', 'MB', 'GB' }
                        local i = 1
                        while size > 1024 do
                            size = size / 1024
                            i = i + 1
                        end
                        return string.format('%.1f%s', size, sufixes[i])
                    end

                    local file = vim.fn.expand('%:p')
                    if string.len(file) == 0 then return '' end
                    return format_file_size(file)
                end,
                condition = conditions.buffer_not_empty,
            }

            ins_right {
                'location'
            }

            ins_right {
                'progress'
            }

            ins_right {
                function () return '▊' end
            }

            lualine.setup(config)
        end,
        dependencies = {
            { 'nvim-tree/nvim-web-devicons' }
        }
    }
}
