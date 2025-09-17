return {
    {
        "rose-pine/neovim",
        priority = 1000,
        config = function()
            local rosepine = require'rose-pine'

            rosepine.setup {
                variant = "moon",
                enable = { 
                    terminal = true
                },
                styles = {
                    bold = true,
                    italic = true,
                    transparency = true
                }
            }

            vim.cmd([[colorscheme rose-pine]])
        end
    }
}
