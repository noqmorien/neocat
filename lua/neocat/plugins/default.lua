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

}
