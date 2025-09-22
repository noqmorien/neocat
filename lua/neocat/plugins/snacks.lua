return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        config = function()
            local snacks = require'snacks'
            snacks.setup {
                bigfile = { enabled = true },
                dashboard = { 
                    enabled = false,
                    preset = {
                        header = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣶⣦⣤⣄⣤⣶⠿⠿⠿⠿⢷⣶⠿⠛⠛⢿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠁⠀⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠸⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡛⠀⠀⠀⠀⠀⠀⣴⣆⠀⠀⠀
⠀⠀⢠⣴⣿⣧⡀⠀⠀⠀⣼⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⢿⣆⠀⠀⠀⠰⢿⣿⣿⣷⠄⠀
⠀⠀⠘⢻⣿⠟⠋⠀⠀⢰⣿⠁⠀⢠⣶⣦⠀⠀⠀⠰⠶⠀⠀⠠⣿⣿⠂⠀⠘⣿⣄⡀⠀⠀⠈⠿⠏⠁⠀⠀
⠀⢀⣀⠀⠉⠀⠀⠀⠀⣼⣏⣀⡀⠘⠿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣛⣿⣿⡟⠃⠀⠀⠀⣀⡀⠀⠀
⢠⣾⣿⣦⡄⠀⢠⣶⣾⣿⣿⣟⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⢻⣿⠆⠀⠀⣴⣿⣷⣤⡀
⠈⠻⣿⠟⠁⠀⠀⣠⣾⣿⡛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⠏⠀⠀⠀⠙⣿⡿⠋⠀
⠀⠀⠀⠀⠀⠀⠀⠉⠉⠻⣿⣦⣄⠀⠀⠀⠀⣴⣾⢿⣷⠿⢶⣦⡀⠀⠀⠀⣴⡿⠋⠀⠀⢀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢙⣿⡗⠀⠀⠘⠛⠁⢸⣿⣀⠀⠉⠀⠀⠀⠀⠹⣿⡆⠀⣾⡿⣿⣆⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡿⠀⠀⠀⠀⠀⠀⠸⠛⠛⠀⠀⠀⠀⠀⠀⠀⠹⣿⣶⣿⢁⣿⡏⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣣⣾⡟⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⠟⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀

    ~ NEOCAT ~
                        ]],
                    },
                },
                explorer = { enabled = false },
                indent = { enabled = false },
                input = { enabled = false },
                picker = { enabled = true },
                notifier = { enabled = true },
                quickfile = { enabled = false },
                scope = { enabled = false },
                scroll = { enabled = false },
                statuscolumn = { enabled = false },
                words = { enabled = false },
            }
        end
    }
}
