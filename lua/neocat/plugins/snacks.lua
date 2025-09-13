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
                indent = { enabled = true },
                input = { enabled = true },
                picker = { enabled = true },
                notifier = { enabled = true },
                quickfile = { enabled = false },
                scope = { enabled = true },
                scroll = { enabled = true },
                statuscolumn = { enabled = true },
                words = { enabled = true },
            }
        end
    }
}
