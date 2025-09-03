return {
    {
        "Exafunction/windsurf.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",
        },
        config = function()
            local codeium = require'codeium'
            codeium.setup {
            }
        end
    }
}
