return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                terminal_colors = true,
                italic = {
                    strings = true,
                    emphasis = true,
                    comments = true,
                    operators = true,
                    folds = true,
                },
                dim_inactive = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                transparent_mode = true,
                contrast = 'hard',
            })
            vim.cmd([[colorscheme gruvbox]])
        end,
    }
}
