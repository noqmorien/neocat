return {
    {
        'nvim-lualine/lualine.nvim',
        config = function()
            local lualine = require'lualine'
            local config = {
                options = {
                    theme = 'auto',
                    section_separators = { left = ' ', right = ' '},
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
                "mode"
            }

            ins_left {
                "branch",
                condition = conditions
            }

            lualine.setup(config)
        end,
        dependencies = {
            { 'nvim-tree/nvim-web-devicons' }
        }
    }
}
