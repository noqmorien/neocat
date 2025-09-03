return {
    -- Utils
    {  'nvim-lua/plenary.nvim' },
    { 'folke/ts-comments.nvim' },
    { 
        'nvim-mini/mini.ai',
        config = function()
            local mini_ai = require'mini.ai'
            mini_ai.setup {
            }
        end
    },
    -- UI
    {
        'DaikyXendo/nvim-material-icon',
    },
    -- QOF
    {
        "psliwka/vim-smoothie",
        config = function()
            vim.g.smoothie_enabled = true
            vim.g.smoothie_no_default_mappings = true
        end
    },
}
