return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            local gruvbox = require'gruvbox'

            gruvbox.setup {
                terminal_colors = true,
                contrast = "hard",
                transparent_mode = true,
            }

            vim.cmd([[colorscheme gruvbox]])
        end
    }
}
